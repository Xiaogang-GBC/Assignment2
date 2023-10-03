const express = require('express');
const multer = require('multer');
const bodyParser = require('body-parser');
const pinataSDK = require('@pinata/sdk');

const pinata = pinataSDK('d916360714adf6265ab1', '61a0249c40b2afbae3d7ba67544db361f195b97ba92b829961ffab97a4869c78');
const app = express();
const upload = multer({ dest: 'uploads/' });

app.use(bodyParser.json());

app.post('/upload', upload.single('file'), async (req, res) => {
  try {
    const file = req.file;
    const { IpfsHash } = await pinata.pinFileToIPFS(file);
    res.json({ ipfsHash: IpfsHash });
  } catch (error) {
    console.error(error);
    res.status(500).send(error.message);
  }
});

app.listen(3001, () => {
  console.log('Server is running on http://localhost:3001');
});
