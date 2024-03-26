package eliteFootballerFollowingApp;

import javax.swing.*;
import java.awt.*;

public class ThreePartGUI {

    public static void main(String[] args) {
        SwingUtilities.invokeLater(ThreePartGUI::createAndShowGUI);
    }

    private static void createAndShowGUI() {
        // Create the main frame
        JFrame frame = new JFrame("Three Part GUI Example");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        // Top Panel
        JPanel topPanel = new JPanel();
        topPanel.setBackground(Color.LIGHT_GRAY);
        topPanel.add(new JLabel("Top Panel"));
        frame.add(topPanel, BorderLayout.NORTH);

        // Middle Panel
        JSplitPane middlePanel = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT);
        middlePanel.setLeftComponent(createInnerPanel("Left Middle"));
        middlePanel.setRightComponent(createInnerPanel("Right Middle"));
        middlePanel.setDividerLocation(350);

        frame.add(middlePanel, BorderLayout.CENTER);

        // Bottom Panel
        JPanel bottomPanel = new JPanel();
        bottomPanel.setBackground(Color.DARK_GRAY);
        bottomPanel.add(new JLabel("Bottom Panel"));
        bottomPanel.setPreferredSize(new Dimension(frame.getWidth(), 100));
        frame.add(bottomPanel, BorderLayout.SOUTH);

        // Set the frame size and make it visible
        frame.setSize(800, 600);
        frame.setVisible(true);
    }

    private static JPanel createInnerPanel(String text) {
        JPanel panel = new JPanel();
        panel.setLayout(new BorderLayout());
        panel.add(new JLabel(text, SwingConstants.CENTER), BorderLayout.CENTER);
        return panel;
    }
}
