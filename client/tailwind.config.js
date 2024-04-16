/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  theme: {
    fontFamily: {
      'sans': ['Ink Free', 'Segoe UI'],
    },
    extend: {
      colors: {
        'money-green': '#658e86',
        'cancel-red': '#9b514c',
        'action-teal': '#192e38',
      }
    },
  },
  plugins: [],
}

