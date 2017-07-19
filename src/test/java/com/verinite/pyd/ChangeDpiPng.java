package com.verinite.pyd;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.metadata.IIOInvalidTreeException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.metadata.IIOMetadataNode;
import javax.imageio.stream.ImageOutputStream;

public class ChangeDpiPng {
	private BufferedImage gridImage;
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try{
		ChangeDpiPng ch=new ChangeDpiPng();
		File file=new File("C://Users//verinite//Desktop//3.jpg");
		ch.saveGridImage(file);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	private void saveGridImage(File output) throws IOException {
	    output.delete();

	    final String formatName = "png";

	    for (Iterator<ImageWriter> iw = ImageIO.getImageWritersByFormatName(formatName); iw.hasNext();) {
	       ImageWriter writer = iw.next();
	       ImageWriteParam writeParam = writer.getDefaultWriteParam();
	       ImageTypeSpecifier typeSpecifier = ImageTypeSpecifier.createFromBufferedImageType(BufferedImage.TYPE_INT_RGB);
	       IIOMetadata metadata = writer.getDefaultImageMetadata(typeSpecifier, writeParam);
	       if (metadata.isReadOnly() || !metadata.isStandardMetadataFormatSupported()) {
	          continue;
	       }

	       setDPI(metadata);

	       final ImageOutputStream stream = ImageIO.createImageOutputStream(output);
	       try {
	          writer.setOutput(stream);
	          writer.write(metadata, new IIOImage(gridImage, null, metadata), writeParam);
	       } finally {
	          stream.close();
	       }
	       break;
	    }
	 }

	 private void setDPI(IIOMetadata metadata) throws IIOInvalidTreeException {

	    // for PMG, it's dots per millimeter
	    double dotsPerMilli = 1.0 * 300 / 10 / 2;

	    IIOMetadataNode horiz = new IIOMetadataNode("HorizontalPixelSize");
	    horiz.setAttribute("value", Double.toString(dotsPerMilli));

	    IIOMetadataNode vert = new IIOMetadataNode("VerticalPixelSize");
	    vert.setAttribute("value", Double.toString(dotsPerMilli));

	    IIOMetadataNode dim = new IIOMetadataNode("Dimension");
	    dim.appendChild(horiz);
	    dim.appendChild(vert);

	    IIOMetadataNode root = new IIOMetadataNode("javax_imageio_1.0");
	    root.appendChild(dim);

	    metadata.mergeTree("javax_imageio_1.0", root);
	 }
}
