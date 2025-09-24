import React from 'react';
import { ThemeProvider, useTheme } from './../Hooks/useTheme'

const ThemedText = () => {
  const { theme } = useTheme();
  const style = {
    background: theme.background,
    color: theme.color,
    padding: '20px',
    borderRadius: '8px',
    display: 'inline-block',
  };

  return <div style={style}>Hello Peeps</div>;
};

const ThemeSwitcher = () => {
  const { toggleTheme, theme } = useTheme();
  return (
    <button onClick={toggleTheme} aria-label="Toggle Theme" style={{ marginTop: 10 }}>
      Toggle Theme
    </button>
  );
};

export default function AppContent() {
  const { theme } = useTheme();

  const pageStyle = {
    minHeight: '100vh',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    background: theme.name === 'light' ? '#f0f0f0' : '#111',
  };

  const headerStyle = {
    color: theme.color,
    marginTop: 0,
  };

  return (
    <div style={pageStyle}>
      <div style={{ textAlign: 'center' }}>
        <h1 style={headerStyle}>Theme Switcher</h1>
        <ThemedText />
        <div style={{ marginTop: 12 }}>
          <ThemeSwitcher />
        </div>
      </div>
    </div>
  );
}