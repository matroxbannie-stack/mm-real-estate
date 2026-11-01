# MM Real Estate website

Simple static website. Koi build ya server nahi chahiye, seedha Vercel par chalti hai.

## Files
- `index.html`     poori website
- `config.json`    business ka naam, phone, WhatsApp, email, address, social media links
- `properties.json` saari properties (neeche dekhein)
- `images/`        logo aur property photos

## Property add karna
`properties.json` mein ek naya hissa jodein, aur photo `images/` folder mein daalein:

    {
      "t": "4 Bed House, Clifton",
      "a": "Clifton, Karachi",
      "k": "sale",            (sale ya rent)
      "y": "House",           (House, Flat, Plot ya Shop)
      "b": 4, "ba": 3,
      "s": "240 Sq Yd",
      "img": "images/clifton-house.jpg",
      "done": false           (bik gayi ya kiraye par chali gayi to true likhein)
    }

Har property ke baad coma lagana na bhoolein, aakhri property ke baad nahi.
Price website par nahi dikhta, customer WhatsApp par poochta hai.

## Social media, phone, naam badalna
`config.json` kholein aur links daalein. Khali link wala icon nahi dikhta.
WhatsApp number country code ke saath, bina + ya space ke likhein (jaise 923001234567).
