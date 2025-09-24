import React, { createContext, useContext, useState} from 'react';

export const ThemeContext = createContext();

const themes = {
  light: {
    name: 'light',
    background: '#ffffff',
    color: '#000000',
  },
  dark: {
    name: 'dark',
    background: '#000000',
    color: '#ffffff',
  },
};

export const useTheme = () => useContext(ThemeContext);

export const ThemeProvider = ({ children }) => {
  const [themeName, setThemeName] = useState('light');
  const theme = themes[themeName];

  const toggleTheme = () => {
    setThemeName((t) => (t === 'light' ? 'dark' : 'light'));
  };

  return (
    <ThemeContext.Provider value={{ theme, toggleTheme }}>
      {children}
    </ThemeContext.Provider>
  );
};