module Jekyll
    class MarkdownBlock < Liquid::Block
      def render(context)
        content = super
        site = context.registers[:site]
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)
        converter.convert(content)
      end
    end
  end
  
  Liquid::Template.register_tag('markdown', Jekyll::MarkdownBlock)
  