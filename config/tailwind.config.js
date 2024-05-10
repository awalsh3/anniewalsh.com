// const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*'
  ],
  darkMode: 'media', // or 'media' or 'class'
  theme: {
    colors: {
      secondary: "#F4F2ED",
      black: "black",
      white: "white",
      gray: "gray",
    },
    extend: {
      fontFamily: {
        "pt-serif": ["PT Serif", "serif"],
          montserrat: ["Montserrat", "sans-serif"],
      },
        backgroundSize: {
        auto: "auto",
        cover: "cover",
        contain: "contain",
        "100%": "100%",
      },
        backgroundImage: {
          underline1: "url('Underline1.svg')",
          underline2: "url('Underline2.svg')",
          underline3: "url('Underline3.svg')",
          underline4: "url('Underline4.svg')",
          highlight3: "url('Highlight3.svg')",
        },
        keyframes: {
          "fade-in-down": {
            "0%": {
              opacity: "0",
              transform: "translateY(-10px)",
            },
            "100%": {
              opacity: "1",
              transform: "translateY(0)",
            },
          },
        },
        animation: {
          "fade-in-down": "fade-in-down 0.5s ease-out",
        },
     },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
 }
};
