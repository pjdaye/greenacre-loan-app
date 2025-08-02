import 'bootstrap/dist/css/bootstrap.min.css';
import type { Metadata } from "next";
import "./page.module.css";

export const metadata: Metadata = {
  title: "Greenacre Loans",
  description: "A demo website for practicing test design principles.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <head>
        <link rel="icon" href="/greenacre.ico" />
      </head>
      <body>{children}</body>
    </html>
  );
}
