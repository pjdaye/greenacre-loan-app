/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  theme: {
    fontFamily: {
      'sans': ['Ink Free', 'Segoe UI'],
    },
    extend: {
      colors: {
        'money-green': '#70988B',
        'cancel-red': '#AC5348',
        'action-teal': '#061B23',
      }
    },
  },
  plugins: [],
}

