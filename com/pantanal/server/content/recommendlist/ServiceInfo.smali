.class public final Lcom/pantanal/server/content/recommendlist/ServiceInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/recommendlist/ServiceInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000O\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0003\bÒ\u0001\b\u0087\b\u0018\u0000 ü\u00012\u00020\u0001:\u0002ü\u0001BÑ\u0004\u0012\u0006\u0010F\u001a\u00020\b\u0012\b\b\u0002\u0010G\u001a\u00020\b\u0012\u0006\u0010H\u001a\u00020\u0002\u0012\f\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00020\f\u0012\u0006\u0010J\u001a\u00020\u000e\u0012\u0006\u0010K\u001a\u00020\u0002\u0012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010M\u001a\u00020\u0012\u0012\b\b\u0002\u0010N\u001a\u00020\u0012\u0012\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010P\u001a\u00020\u0002\u0012\b\b\u0002\u0010Q\u001a\u00020\u0004\u0012\b\b\u0002\u0010R\u001a\u00020\u0004\u0012\b\b\u0002\u0010S\u001a\u00020\u0002\u0012\b\b\u0002\u0010T\u001a\u00020\u0002\u0012\b\b\u0002\u0010U\u001a\u00020\u0002\u0012\b\b\u0002\u0010V\u001a\u00020\u0004\u0012\b\b\u0002\u0010W\u001a\u00020\u0002\u0012\b\b\u0002\u0010X\u001a\u00020\u0002\u0012\u0016\b\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020 \u0018\u00010\u001f\u0012\n\b\u0002\u0010Z\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010[\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010]\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010`\u001a\u0004\u0018\u00010)\u0012\u0014\b\u0002\u0010a\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020+\u0012\u0014\b\u0002\u0010b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0+\u0012\b\b\u0002\u0010c\u001a\u00020\u0002\u0012\b\b\u0002\u0010d\u001a\u00020\u0004\u0012\n\b\u0002\u0010e\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010f\u001a\u00020\u0002\u0012\b\b\u0002\u0010g\u001a\u00020\u0004\u0012\b\b\u0002\u0010h\u001a\u00020\u0004\u0012\n\b\u0002\u0010i\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010j\u001a\u00020\u0012\u0012\b\b\u0002\u0010k\u001a\u00020\u0002\u0012\b\b\u0002\u0010l\u001a\u00020\u0012\u0012\b\b\u0002\u0010m\u001a\u00020\u0012\u0012\b\b\u0002\u0010n\u001a\u00020\u0002\u0012\b\b\u0002\u0010o\u001a\u00020\u0002\u0012\b\b\u0002\u0010p\u001a\u00020\u000e\u0012\b\b\u0002\u0010q\u001a\u00020\u0004\u0012\b\b\u0002\u0010r\u001a\u00020\u0002\u0012\b\b\u0002\u0010s\u001a\u00020\u0004\u0012\b\b\u0002\u0010t\u001a\u00020\u0012\u0012\b\b\u0002\u0010u\u001a\u00020\u0002\u0012\b\b\u0002\u0010v\u001a\u00020\u0002\u0012\b\b\u0002\u0010w\u001a\u00020\u0004\u0012\b\b\u0002\u0010x\u001a\u00020\u0002\u0012\b\b\u0002\u0010y\u001a\u00020\u0002\u0012\b\b\u0002\u0010z\u001a\u00020\u0004¢\u0006\u0006\bù\u0001\u0010ú\u0001Bo\b\u0016\u0012\u0006\u0010F\u001a\u00020\b\u0012\u0006\u0010H\u001a\u00020\u0002\u0012\f\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00020\f\u0012\u0006\u0010J\u001a\u00020\u000e\u0012\u0006\u0010K\u001a\u00020\u0002\u0012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010M\u001a\u00020\u0012\u0012\b\b\u0002\u0010N\u001a\u00020\u0012\u0012\u0016\b\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020 \u0018\u00010\u001f¢\u0006\u0006\bù\u0001\u0010û\u0001J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\n\u001a\u00020\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\u0002HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\fHÆ\u0003J\t\u0010\u000f\u001a\u00020\u000eHÆ\u0003J\t\u0010\u0010\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010\u0013\u001a\u00020\u0012HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0012HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010\u0016\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0002HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0002HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0002HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0002HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0002HÆ\u0003J\u0017\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020 \u0018\u00010\u001fHÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0012\u0010%\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0004\b%\u0010&J\u0012\u0010\'\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0004\b\'\u0010&J\u000b\u0010(\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010)HÆ\u0003J\u0015\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020+HÆ\u0003J\u0015\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0+HÆ\u0003J\t\u0010.\u001a\u00020\u0002HÆ\u0003J\t\u0010/\u001a\u00020\u0004HÆ\u0003J\u0012\u00100\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0004\b0\u0010&J\t\u00101\u001a\u00020\u0002HÆ\u0003J\t\u00102\u001a\u00020\u0004HÆ\u0003J\t\u00103\u001a\u00020\u0004HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u00105\u001a\u00020\u0012HÆ\u0003J\t\u00106\u001a\u00020\u0002HÆ\u0003J\t\u00107\u001a\u00020\u0012HÆ\u0003J\t\u00108\u001a\u00020\u0012HÆ\u0003J\t\u00109\u001a\u00020\u0002HÆ\u0003J\t\u0010:\u001a\u00020\u0002HÆ\u0003J\t\u0010;\u001a\u00020\u000eHÆ\u0003J\t\u0010<\u001a\u00020\u0004HÆ\u0003J\t\u0010=\u001a\u00020\u0002HÆ\u0003J\t\u0010>\u001a\u00020\u0004HÆ\u0003J\t\u0010?\u001a\u00020\u0012HÆ\u0003J\t\u0010@\u001a\u00020\u0002HÆ\u0003J\t\u0010A\u001a\u00020\u0002HÆ\u0003J\t\u0010B\u001a\u00020\u0004HÆ\u0003J\t\u0010C\u001a\u00020\u0002HÆ\u0003J\t\u0010D\u001a\u00020\u0002HÆ\u0003J\t\u0010E\u001a\u00020\u0004HÆ\u0003Jä\u0004\u0010{\u001a\u00020\u00002\b\b\u0002\u0010F\u001a\u00020\b2\b\b\u0002\u0010G\u001a\u00020\b2\b\b\u0002\u0010H\u001a\u00020\u00022\u000e\b\u0002\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\b\b\u0002\u0010J\u001a\u00020\u000e2\b\b\u0002\u0010K\u001a\u00020\u00022\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010M\u001a\u00020\u00122\b\b\u0002\u0010N\u001a\u00020\u00122\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010P\u001a\u00020\u00022\b\b\u0002\u0010Q\u001a\u00020\u00042\b\b\u0002\u0010R\u001a\u00020\u00042\b\b\u0002\u0010S\u001a\u00020\u00022\b\b\u0002\u0010T\u001a\u00020\u00022\b\b\u0002\u0010U\u001a\u00020\u00022\b\b\u0002\u0010V\u001a\u00020\u00042\b\b\u0002\u0010W\u001a\u00020\u00022\b\b\u0002\u0010X\u001a\u00020\u00022\u0016\b\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\n\b\u0002\u0010Z\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010[\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010]\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010`\u001a\u0004\u0018\u00010)2\u0014\b\u0002\u0010a\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020+2\u0014\b\u0002\u0010b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0+2\b\b\u0002\u0010c\u001a\u00020\u00022\b\b\u0002\u0010d\u001a\u00020\u00042\n\b\u0002\u0010e\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010f\u001a\u00020\u00022\b\b\u0002\u0010g\u001a\u00020\u00042\b\b\u0002\u0010h\u001a\u00020\u00042\n\b\u0002\u0010i\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010j\u001a\u00020\u00122\b\b\u0002\u0010k\u001a\u00020\u00022\b\b\u0002\u0010l\u001a\u00020\u00122\b\b\u0002\u0010m\u001a\u00020\u00122\b\b\u0002\u0010n\u001a\u00020\u00022\b\b\u0002\u0010o\u001a\u00020\u00022\b\b\u0002\u0010p\u001a\u00020\u000e2\b\b\u0002\u0010q\u001a\u00020\u00042\b\b\u0002\u0010r\u001a\u00020\u00022\b\b\u0002\u0010s\u001a\u00020\u00042\b\b\u0002\u0010t\u001a\u00020\u00122\b\b\u0002\u0010u\u001a\u00020\u00022\b\b\u0002\u0010v\u001a\u00020\u00022\b\b\u0002\u0010w\u001a\u00020\u00042\b\b\u0002\u0010x\u001a\u00020\u00022\b\b\u0002\u0010y\u001a\u00020\u00022\b\b\u0002\u0010z\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b{\u0010|J\t\u0010}\u001a\u00020\bHÖ\u0001J\t\u0010~\u001a\u00020\u0002HÖ\u0001J\u0014\u0010\u0080\u0001\u001a\u00020\u00042\b\u0010\u007f\u001a\u0004\u0018\u00010 HÖ\u0003R\u001c\u0010F\u001a\u00020\b8\u0006@\u0006¢\u0006\u000f\n\u0005\bF\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R\'\u0010G\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bG\u0010\u0081\u0001\u001a\u0006\b\u0084\u0001\u0010\u0083\u0001\"\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001c\u0010H\u001a\u00020\u00028\u0006@\u0006¢\u0006\u000f\n\u0005\bH\u0010\u0087\u0001\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001R\"\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00020\f8\u0006@\u0006¢\u0006\u000f\n\u0005\bI\u0010\u008a\u0001\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001c\u0010J\u001a\u00020\u000e8\u0006@\u0006¢\u0006\u000f\n\u0005\bJ\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R\u001c\u0010K\u001a\u00020\u00028\u0006@\u0006¢\u0006\u000f\n\u0005\bK\u0010\u0087\u0001\u001a\u0006\b\u0090\u0001\u0010\u0089\u0001R\u001e\u0010L\u001a\u0004\u0018\u00010\b8\u0006@\u0006¢\u0006\u000f\n\u0005\bL\u0010\u0081\u0001\u001a\u0006\b\u0091\u0001\u0010\u0083\u0001R\u001c\u0010M\u001a\u00020\u00128\u0006@\u0006¢\u0006\u000f\n\u0005\bM\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001c\u0010N\u001a\u00020\u00128\u0006@\u0006¢\u0006\u000f\n\u0005\bN\u0010\u0092\u0001\u001a\u0006\b\u0095\u0001\u0010\u0094\u0001R)\u0010O\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bO\u0010\u0081\u0001\u001a\u0006\b\u0096\u0001\u0010\u0083\u0001\"\u0006\b\u0097\u0001\u0010\u0086\u0001R&\u0010P\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\bP\u0010\u0087\u0001\u001a\u0005\bP\u0010\u0089\u0001\"\u0006\b\u0098\u0001\u0010\u0099\u0001R\'\u0010Q\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bQ\u0010\u009a\u0001\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001\"\u0006\b\u009d\u0001\u0010\u009e\u0001R\'\u0010R\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bR\u0010\u009a\u0001\u001a\u0006\b\u009f\u0001\u0010\u009c\u0001\"\u0006\b\u00a0\u0001\u0010\u009e\u0001R\'\u0010S\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bS\u0010\u0087\u0001\u001a\u0006\b¡\u0001\u0010\u0089\u0001\"\u0006\b¢\u0001\u0010\u0099\u0001R\'\u0010T\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bT\u0010\u0087\u0001\u001a\u0006\b£\u0001\u0010\u0089\u0001\"\u0006\b¤\u0001\u0010\u0099\u0001R\'\u0010U\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bU\u0010\u0087\u0001\u001a\u0006\b¥\u0001\u0010\u0089\u0001\"\u0006\b¦\u0001\u0010\u0099\u0001R&\u0010V\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\bV\u0010\u009a\u0001\u001a\u0005\bV\u0010\u009c\u0001\"\u0006\b§\u0001\u0010\u009e\u0001R\'\u0010W\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bW\u0010\u0087\u0001\u001a\u0006\b¨\u0001\u0010\u0089\u0001\"\u0006\b©\u0001\u0010\u0099\u0001R\'\u0010X\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bX\u0010\u0087\u0001\u001a\u0006\bª\u0001\u0010\u0089\u0001\"\u0006\b«\u0001\u0010\u0099\u0001R*\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020 \u0018\u00010\u001f8\u0006@\u0006¢\u0006\u000f\n\u0005\bY\u0010¬\u0001\u001a\u0006\b\u00ad\u0001\u0010®\u0001R)\u0010Z\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bZ\u0010\u0081\u0001\u001a\u0006\b¯\u0001\u0010\u0083\u0001\"\u0006\b°\u0001\u0010\u0086\u0001R)\u0010[\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b[\u0010\u0081\u0001\u001a\u0006\b±\u0001\u0010\u0083\u0001\"\u0006\b²\u0001\u0010\u0086\u0001R)\u0010\\\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\\\u0010\u0081\u0001\u001a\u0006\b³\u0001\u0010\u0083\u0001\"\u0006\b´\u0001\u0010\u0086\u0001R(\u0010]\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b]\u0010µ\u0001\u001a\u0005\b¶\u0001\u0010&\"\u0006\b·\u0001\u0010¸\u0001R(\u0010^\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b^\u0010µ\u0001\u001a\u0005\b¹\u0001\u0010&\"\u0006\bº\u0001\u0010¸\u0001R)\u0010_\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b_\u0010\u0081\u0001\u001a\u0006\b»\u0001\u0010\u0083\u0001\"\u0006\b¼\u0001\u0010\u0086\u0001R)\u0010`\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b`\u0010½\u0001\u001a\u0006\b¾\u0001\u0010¿\u0001\"\u0006\bÀ\u0001\u0010Á\u0001R3\u0010a\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\ba\u0010Â\u0001\u001a\u0006\bÃ\u0001\u0010Ä\u0001\"\u0006\bÅ\u0001\u0010Æ\u0001R3\u0010b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0+8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bb\u0010Â\u0001\u001a\u0006\bÇ\u0001\u0010Ä\u0001\"\u0006\bÈ\u0001\u0010Æ\u0001R\'\u0010c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bc\u0010\u0087\u0001\u001a\u0006\bÉ\u0001\u0010\u0089\u0001\"\u0006\bÊ\u0001\u0010\u0099\u0001R\'\u0010d\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bd\u0010\u009a\u0001\u001a\u0006\bË\u0001\u0010\u009c\u0001\"\u0006\bÌ\u0001\u0010\u009e\u0001R(\u0010e\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\be\u0010µ\u0001\u001a\u0005\bÍ\u0001\u0010&\"\u0006\bÎ\u0001\u0010¸\u0001R\'\u0010f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bf\u0010\u0087\u0001\u001a\u0006\bÏ\u0001\u0010\u0089\u0001\"\u0006\bÐ\u0001\u0010\u0099\u0001R\'\u0010g\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bg\u0010\u009a\u0001\u001a\u0006\bÑ\u0001\u0010\u009c\u0001\"\u0006\bÒ\u0001\u0010\u009e\u0001R&\u0010h\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\bh\u0010\u009a\u0001\u001a\u0005\bh\u0010\u009c\u0001\"\u0006\bÓ\u0001\u0010\u009e\u0001R)\u0010i\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bi\u0010\u0081\u0001\u001a\u0006\bÔ\u0001\u0010\u0083\u0001\"\u0006\bÕ\u0001\u0010\u0086\u0001R\'\u0010j\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bj\u0010\u0092\u0001\u001a\u0006\bÖ\u0001\u0010\u0094\u0001\"\u0006\b×\u0001\u0010Ø\u0001R\'\u0010k\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bk\u0010\u0087\u0001\u001a\u0006\bÙ\u0001\u0010\u0089\u0001\"\u0006\bÚ\u0001\u0010\u0099\u0001R\'\u0010l\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bl\u0010\u0092\u0001\u001a\u0006\bÛ\u0001\u0010\u0094\u0001\"\u0006\bÜ\u0001\u0010Ø\u0001R\'\u0010m\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bm\u0010\u0092\u0001\u001a\u0006\bÝ\u0001\u0010\u0094\u0001\"\u0006\bÞ\u0001\u0010Ø\u0001R\'\u0010n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bn\u0010\u0087\u0001\u001a\u0006\bß\u0001\u0010\u0089\u0001\"\u0006\bà\u0001\u0010\u0099\u0001R\'\u0010o\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bo\u0010\u0087\u0001\u001a\u0006\bá\u0001\u0010\u0089\u0001\"\u0006\bâ\u0001\u0010\u0099\u0001R\'\u0010p\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bp\u0010\u008d\u0001\u001a\u0006\bã\u0001\u0010\u008f\u0001\"\u0006\bä\u0001\u0010å\u0001R\'\u0010q\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bq\u0010\u009a\u0001\u001a\u0006\bæ\u0001\u0010\u009c\u0001\"\u0006\bç\u0001\u0010\u009e\u0001R\'\u0010r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\br\u0010\u0087\u0001\u001a\u0006\bè\u0001\u0010\u0089\u0001\"\u0006\bé\u0001\u0010\u0099\u0001R&\u0010s\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\bs\u0010\u009a\u0001\u001a\u0005\bs\u0010\u009c\u0001\"\u0006\bê\u0001\u0010\u009e\u0001R\'\u0010t\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bt\u0010\u0092\u0001\u001a\u0006\bë\u0001\u0010\u0094\u0001\"\u0006\bì\u0001\u0010Ø\u0001R\'\u0010u\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bu\u0010\u0087\u0001\u001a\u0006\bí\u0001\u0010\u0089\u0001\"\u0006\bî\u0001\u0010\u0099\u0001R\'\u0010v\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bv\u0010\u0087\u0001\u001a\u0006\bï\u0001\u0010\u0089\u0001\"\u0006\bð\u0001\u0010\u0099\u0001R\'\u0010w\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bw\u0010\u009a\u0001\u001a\u0006\bñ\u0001\u0010\u009c\u0001\"\u0006\bò\u0001\u0010\u009e\u0001R\'\u0010x\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bx\u0010\u0087\u0001\u001a\u0006\bó\u0001\u0010\u0089\u0001\"\u0006\bô\u0001\u0010\u0099\u0001R\'\u0010y\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\by\u0010\u0087\u0001\u001a\u0006\bõ\u0001\u0010\u0089\u0001\"\u0006\bö\u0001\u0010\u0099\u0001R\'\u0010z\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bz\u0010\u009a\u0001\u001a\u0006\b÷\u0001\u0010\u009c\u0001\"\u0006\bø\u0001\u0010\u009e\u0001¨\u0006ý\u0001"
    }
    d2 = {
        "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
        "Ljava/io/Serializable;",
        "",
        "size",
        "",
        "isSupportSize",
        "entranceType",
        "isSupportEntrance",
        "",
        "component1",
        "component2",
        "component3",
        "",
        "component4",
        "",
        "component5",
        "component6",
        "component7",
        "",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "Landroid/util/ArrayMap;",
        "",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "()Ljava/lang/Long;",
        "component25",
        "component26",
        "Lcom/oplus/utrace/sdk/UTraceContext;",
        "component27",
        "",
        "component28",
        "component29",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "component37",
        "component38",
        "component39",
        "component40",
        "component41",
        "component42",
        "component43",
        "component44",
        "component45",
        "component46",
        "component47",
        "component48",
        "component49",
        "component50",
        "component51",
        "component52",
        "component53",
        "serviceId",
        "serviceInstanceId",
        "serviceType",
        "supportCardSizes",
        "score",
        "supportEntrance",
        "initData",
        "timeStamp",
        "versionCode",
        "subdomain",
        "isParamsSendToSeedling",
        "cannotReduceRecommend",
        "forceRebuild",
        "serviceCategory",
        "channelType",
        "intentCategory",
        "isGuaranteedCard",
        "seedlingType",
        "useTemplate",
        "extras",
        "hostPackage",
        "seedlingCardOptions",
        "intentParams",
        "instanceId",
        "intentId",
        "policy",
        "utraceContext",
        "sizeToCardType",
        "sizeToCardConfig",
        "cloudRemindSwitch",
        "shouldFocus",
        "focusTimestamp",
        "groupPriority",
        "needToWaitCardData",
        "isSupportMultiInstance",
        "serviceLevel",
        "sceneId",
        "cardSleeveType",
        "sceneCreateTime",
        "sceneUpdateTime",
        "sceneWeight",
        "sceneStatus",
        "sceneScore",
        "sceneShouldFocus",
        "serviceStatus",
        "isSceneFocus",
        "focusTime",
        "expectSceneCnt",
        "combinationStrategy",
        "homeFlag",
        "sceneLevel",
        "intentPosition",
        "forceGuaranteed",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLjava/lang/String;IZZIIIZIILandroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/Long;IZZLjava/lang/String;JIJJIIFZIZJIIZIIZ)Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
        "toString",
        "hashCode",
        "other",
        "equals",
        "Ljava/lang/String;",
        "getServiceId",
        "()Ljava/lang/String;",
        "getServiceInstanceId",
        "setServiceInstanceId",
        "(Ljava/lang/String;)V",
        "I",
        "getServiceType",
        "()I",
        "Ljava/util/List;",
        "getSupportCardSizes",
        "()Ljava/util/List;",
        "F",
        "getScore",
        "()F",
        "getSupportEntrance",
        "getInitData",
        "J",
        "getTimeStamp",
        "()J",
        "getVersionCode",
        "getSubdomain",
        "setSubdomain",
        "setParamsSendToSeedling",
        "(I)V",
        "Z",
        "getCannotReduceRecommend",
        "()Z",
        "setCannotReduceRecommend",
        "(Z)V",
        "getForceRebuild",
        "setForceRebuild",
        "getServiceCategory",
        "setServiceCategory",
        "getChannelType",
        "setChannelType",
        "getIntentCategory",
        "setIntentCategory",
        "setGuaranteedCard",
        "getSeedlingType",
        "setSeedlingType",
        "getUseTemplate",
        "setUseTemplate",
        "Landroid/util/ArrayMap;",
        "getExtras",
        "()Landroid/util/ArrayMap;",
        "getHostPackage",
        "setHostPackage",
        "getSeedlingCardOptions",
        "setSeedlingCardOptions",
        "getIntentParams",
        "setIntentParams",
        "Ljava/lang/Long;",
        "getInstanceId",
        "setInstanceId",
        "(Ljava/lang/Long;)V",
        "getIntentId",
        "setIntentId",
        "getPolicy",
        "setPolicy",
        "Lcom/oplus/utrace/sdk/UTraceContext;",
        "getUtraceContext",
        "()Lcom/oplus/utrace/sdk/UTraceContext;",
        "setUtraceContext",
        "(Lcom/oplus/utrace/sdk/UTraceContext;)V",
        "Ljava/util/Map;",
        "getSizeToCardType",
        "()Ljava/util/Map;",
        "setSizeToCardType",
        "(Ljava/util/Map;)V",
        "getSizeToCardConfig",
        "setSizeToCardConfig",
        "getCloudRemindSwitch",
        "setCloudRemindSwitch",
        "getShouldFocus",
        "setShouldFocus",
        "getFocusTimestamp",
        "setFocusTimestamp",
        "getGroupPriority",
        "setGroupPriority",
        "getNeedToWaitCardData",
        "setNeedToWaitCardData",
        "setSupportMultiInstance",
        "getServiceLevel",
        "setServiceLevel",
        "getSceneId",
        "setSceneId",
        "(J)V",
        "getCardSleeveType",
        "setCardSleeveType",
        "getSceneCreateTime",
        "setSceneCreateTime",
        "getSceneUpdateTime",
        "setSceneUpdateTime",
        "getSceneWeight",
        "setSceneWeight",
        "getSceneStatus",
        "setSceneStatus",
        "getSceneScore",
        "setSceneScore",
        "(F)V",
        "getSceneShouldFocus",
        "setSceneShouldFocus",
        "getServiceStatus",
        "setServiceStatus",
        "setSceneFocus",
        "getFocusTime",
        "setFocusTime",
        "getExpectSceneCnt",
        "setExpectSceneCnt",
        "getCombinationStrategy",
        "setCombinationStrategy",
        "getHomeFlag",
        "setHomeFlag",
        "getSceneLevel",
        "setSceneLevel",
        "getIntentPosition",
        "setIntentPosition",
        "getForceGuaranteed",
        "setForceGuaranteed",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLjava/lang/String;IZZIIIZIILandroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/Long;IZZLjava/lang/String;JIJJIIFZIZJIIZIIZ)V",
        "(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;)V",
        "Companion",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/pantanal/server/content/recommendlist/ServiceInfo$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cannotReduceRecommend:Z

.field private cardSleeveType:I

.field private channelType:I

.field private cloudRemindSwitch:I

.field private combinationStrategy:I

.field private expectSceneCnt:I

.field private final extras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private focusTime:J

.field private focusTimestamp:Ljava/lang/Long;

.field private forceGuaranteed:Z

.field private forceRebuild:Z

.field private groupPriority:I

.field private homeFlag:Z

.field private hostPackage:Ljava/lang/String;

.field private final initData:Ljava/lang/String;

.field private instanceId:Ljava/lang/Long;

.field private intentCategory:I

.field private intentId:Ljava/lang/Long;

.field private intentParams:Ljava/lang/String;

.field private intentPosition:I

.field private isGuaranteedCard:Z

.field private isParamsSendToSeedling:I

.field private isSceneFocus:Z

.field private isSupportMultiInstance:Z

.field private needToWaitCardData:Z

.field private policy:Ljava/lang/String;

.field private sceneCreateTime:J

.field private sceneId:J

.field private sceneLevel:I

.field private sceneScore:F

.field private sceneShouldFocus:Z

.field private sceneStatus:I

.field private sceneUpdateTime:J

.field private sceneWeight:I

.field private final score:F

.field private seedlingCardOptions:Ljava/lang/String;

.field private seedlingType:I

.field private serviceCategory:I

.field private final serviceId:Ljava/lang/String;

.field private serviceInstanceId:Ljava/lang/String;

.field private serviceLevel:Ljava/lang/String;

.field private serviceStatus:I

.field private final serviceType:I

.field private shouldFocus:Z

.field private sizeToCardConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sizeToCardType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private subdomain:Ljava/lang/String;

.field private final supportCardSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final supportEntrance:I

.field private final timeStamp:J

.field private useTemplate:I

.field private utraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

.field private final versionCode:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->Companion:Lcom/pantanal/server/content/recommendlist/ServiceInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;)V
    .registers 75
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FI",
            "Ljava/lang/String;",
            "JJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v22, p11

    const-string v2, "serviceId"

    move-object/from16 v12, p1

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "supportCardSizes"

    move-object/from16 v12, p3

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/high16 v60, -0x100000

    const v61, 0x1ffffb

    const/16 v62, 0x0

    invoke-direct/range {v0 .. v62}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLjava/lang/String;IZZIIIZIILandroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/Long;IZZLjava/lang/String;JIJJIIFZIZJIIZIIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 29

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v9, v2

    goto :goto_b

    :cond_9
    move-object/from16 v9, p6

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_13

    const-wide/16 v3, 0x0

    move-wide v12, v3

    goto :goto_15

    :cond_13
    move-wide/from16 v12, p9

    :goto_15
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1b

    move-object v14, v2

    goto :goto_1d

    :cond_1b
    move-object/from16 v14, p11

    :goto_1d
    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v3 .. v14}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLandroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLjava/lang/String;IZZIIIZIILandroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/Long;IZZLjava/lang/String;JIJJIIFZIZJIIZIIZ)V
    .registers 67
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FI",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "IZZIIIZII",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/lang/Long;",
            "IZZ",
            "Ljava/lang/String;",
            "JIJJIIFZIZJIIZIIZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p30

    move-object/from16 v5, p31

    const-string v6, "serviceId"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "serviceInstanceId"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "supportCardSizes"

    invoke-static {p4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "sizeToCardType"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "sizeToCardConfig"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    iput-object v2, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceType:I

    iput-object v3, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    move v1, p5

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->score:F

    move v1, p6

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportEntrance:I

    move-object v1, p7

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->timeStamp:J

    move-wide/from16 v1, p10

    iput-wide v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->versionCode:J

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    move/from16 v1, p13

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceRebuild:Z

    move/from16 v1, p16

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceCategory:I

    move/from16 v1, p17

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->channelType:I

    move/from16 v1, p18

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentCategory:I

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    move/from16 v1, p20

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingType:I

    move/from16 v1, p21

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->useTemplate:I

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingCardOptions:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentParams:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->utraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

    iput-object v4, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    iput-object v5, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    move/from16 v1, p32

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cloudRemindSwitch:I

    move/from16 v1, p33

    iput-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->shouldFocus:Z

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTimestamp:Ljava/lang/Long;

    move/from16 v1, p35

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->groupPriority:I

    move/from16 v1, p36

    iput-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->needToWaitCardData:Z

    move/from16 v1, p37

    iput-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance:Z

    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceLevel:Ljava/lang/String;

    move-wide/from16 v1, p39

    iput-wide v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneId:J

    move/from16 v1, p41

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cardSleeveType:I

    move-wide/from16 v1, p42

    iput-wide v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneCreateTime:J

    move-wide/from16 v1, p44

    iput-wide v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneUpdateTime:J

    move/from16 v1, p46

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneWeight:I

    move/from16 v1, p47

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneStatus:I

    move/from16 v1, p48

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneScore:F

    move/from16 v1, p49

    iput-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneShouldFocus:Z

    move/from16 v1, p50

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceStatus:I

    move/from16 v1, p51

    iput-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSceneFocus:Z

    move-wide/from16 v1, p52

    iput-wide v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTime:J

    move/from16 v1, p54

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->expectSceneCnt:I

    move/from16 v1, p55

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->combinationStrategy:I

    move/from16 v1, p56

    iput-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->homeFlag:Z

    move/from16 v1, p57

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneLevel:I

    move/from16 v1, p58

    iput v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentPosition:I

    move/from16 v1, p59

    iput-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceGuaranteed:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLjava/lang/String;IZZIIIZIILandroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/Long;IZZLjava/lang/String;JIJJIIFZIZJIIZIIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 126

    move/from16 v0, p60

    move/from16 v1, p61

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_c

    const-string v2, ""

    move-object v5, v2

    goto :goto_e

    :cond_c
    move-object/from16 v5, p2

    :goto_e
    and-int/lit8 v2, v0, 0x40

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    move-object v10, v3

    goto :goto_17

    :cond_15
    move-object/from16 v10, p7

    :goto_17
    and-int/lit16 v2, v0, 0x100

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_1f

    move-wide v13, v6

    goto :goto_21

    :cond_1f
    move-wide/from16 v13, p10

    :goto_21
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_27

    move-object v15, v3

    goto :goto_29

    :cond_27
    move-object/from16 v15, p12

    :goto_29
    and-int/lit16 v2, v0, 0x400

    const/4 v4, 0x0

    if-eqz v2, :cond_31

    move/from16 v16, v4

    goto :goto_33

    :cond_31
    move/from16 v16, p13

    :goto_33
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_3a

    move/from16 v17, v4

    goto :goto_3c

    :cond_3a
    move/from16 v17, p14

    :goto_3c
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_43

    move/from16 v18, v4

    goto :goto_45

    :cond_43
    move/from16 v18, p15

    :goto_45
    and-int/lit16 v2, v0, 0x2000

    const/4 v8, 0x1

    if-eqz v2, :cond_4d

    move/from16 v19, v8

    goto :goto_4f

    :cond_4d
    move/from16 v19, p16

    :goto_4f
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_56

    move/from16 v20, v8

    goto :goto_58

    :cond_56
    move/from16 v20, p17

    :goto_58
    const v2, 0x8000

    and-int v9, v0, v2

    if-eqz v9, :cond_62

    move/from16 v21, v4

    goto :goto_64

    :cond_62
    move/from16 v21, p18

    :goto_64
    const/high16 v9, 0x10000

    and-int v11, v0, v9

    if-eqz v11, :cond_6d

    move/from16 v22, v4

    goto :goto_6f

    :cond_6d
    move/from16 v22, p19

    :goto_6f
    const/high16 v11, 0x20000

    and-int v12, v0, v11

    if-eqz v12, :cond_78

    move/from16 v23, v8

    goto :goto_7a

    :cond_78
    move/from16 v23, p20

    :goto_7a
    const/high16 v12, 0x40000

    and-int v24, v0, v12

    if-eqz v24, :cond_83

    move/from16 v24, v4

    goto :goto_85

    :cond_83
    move/from16 v24, p21

    :goto_85
    const/high16 v25, 0x80000

    and-int v26, v0, v25

    if-eqz v26, :cond_8e

    move-object/from16 v26, v3

    goto :goto_90

    :cond_8e
    move-object/from16 v26, p22

    :goto_90
    const/high16 v27, 0x100000

    and-int v28, v0, v27

    if-eqz v28, :cond_99

    move-object/from16 v28, v3

    goto :goto_9b

    :cond_99
    move-object/from16 v28, p23

    :goto_9b
    const/high16 v29, 0x200000

    and-int v29, v0, v29

    if-eqz v29, :cond_a4

    move-object/from16 v29, v3

    goto :goto_a6

    :cond_a4
    move-object/from16 v29, p24

    :goto_a6
    const/high16 v30, 0x400000

    and-int v30, v0, v30

    if-eqz v30, :cond_af

    move-object/from16 v30, v3

    goto :goto_b1

    :cond_af
    move-object/from16 v30, p25

    :goto_b1
    const/high16 v31, 0x800000

    and-int v31, v0, v31

    if-eqz v31, :cond_ba

    move-object/from16 v31, v3

    goto :goto_bc

    :cond_ba
    move-object/from16 v31, p26

    :goto_bc
    const/high16 v32, 0x1000000

    and-int v32, v0, v32

    if-eqz v32, :cond_c5

    move-object/from16 v32, v3

    goto :goto_c7

    :cond_c5
    move-object/from16 v32, p27

    :goto_c7
    const/high16 v33, 0x2000000

    and-int v33, v0, v33

    if-eqz v33, :cond_d0

    move-object/from16 v33, v3

    goto :goto_d2

    :cond_d0
    move-object/from16 v33, p28

    :goto_d2
    const/high16 v34, 0x4000000

    and-int v34, v0, v34

    if-eqz v34, :cond_db

    move-object/from16 v34, v3

    goto :goto_dd

    :cond_db
    move-object/from16 v34, p29

    :goto_dd
    const/high16 v35, 0x8000000

    and-int v35, v0, v35

    if-eqz v35, :cond_e9

    new-instance v35, Ljava/util/LinkedHashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_eb

    :cond_e9
    move-object/from16 v35, p30

    :goto_eb
    const/high16 v36, 0x10000000

    and-int v36, v0, v36

    if-eqz v36, :cond_f7

    new-instance v36, Ljava/util/LinkedHashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_f9

    :cond_f7
    move-object/from16 v36, p31

    :goto_f9
    const/high16 v37, 0x20000000

    and-int v37, v0, v37

    if-eqz v37, :cond_102

    move/from16 v37, v8

    goto :goto_104

    :cond_102
    move/from16 v37, p32

    :goto_104
    const/high16 v38, 0x40000000  # 2.0f

    and-int v38, v0, v38

    if-eqz v38, :cond_10d

    move/from16 v38, v4

    goto :goto_10f

    :cond_10d
    move/from16 v38, p33

    :goto_10f
    const/high16 v39, -0x80000000

    and-int v0, v0, v39

    if-eqz v0, :cond_117

    move-object v0, v3

    goto :goto_119

    :cond_117
    move-object/from16 v0, p34

    :goto_119
    and-int/lit8 v39, v1, 0x1

    if-eqz v39, :cond_120

    const/16 v39, 0x4

    goto :goto_122

    :cond_120
    move/from16 v39, p35

    :goto_122
    and-int/lit8 v40, v1, 0x2

    if-eqz v40, :cond_129

    move/from16 v40, v4

    goto :goto_12b

    :cond_129
    move/from16 v40, p36

    :goto_12b
    and-int/lit8 v41, v1, 0x4

    if-eqz v41, :cond_132

    move/from16 v41, v4

    goto :goto_134

    :cond_132
    move/from16 v41, p37

    :goto_134
    and-int/lit8 v42, v1, 0x8

    if-eqz v42, :cond_13b

    move-object/from16 v42, v3

    goto :goto_13d

    :cond_13b
    move-object/from16 v42, p38

    :goto_13d
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_144

    move-wide/from16 v43, v6

    goto :goto_146

    :cond_144
    move-wide/from16 v43, p39

    :goto_146
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_14d

    move/from16 v45, v4

    goto :goto_14f

    :cond_14d
    move/from16 v45, p41

    :goto_14f
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_156

    move-wide/from16 v46, v6

    goto :goto_158

    :cond_156
    move-wide/from16 v46, p42

    :goto_158
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_15f

    move-wide/from16 v48, v6

    goto :goto_161

    :cond_15f
    move-wide/from16 v48, p44

    :goto_161
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_168

    move/from16 v50, v4

    goto :goto_16a

    :cond_168
    move/from16 v50, p46

    :goto_16a
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_171

    move/from16 v51, v4

    goto :goto_173

    :cond_171
    move/from16 v51, p47

    :goto_173
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_17c

    const/high16 v3, -0x40800000  # -1.0f

    move/from16 v52, v3

    goto :goto_17e

    :cond_17c
    move/from16 v52, p48

    :goto_17e
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_185

    move/from16 v53, v4

    goto :goto_187

    :cond_185
    move/from16 v53, p49

    :goto_187
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_18f

    const/4 v3, -0x1

    move/from16 v54, v3

    goto :goto_191

    :cond_18f
    move/from16 v54, p50

    :goto_191
    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_198

    move/from16 v55, v4

    goto :goto_19a

    :cond_198
    move/from16 v55, p51

    :goto_19a
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_1a4

    const-wide/32 v6, 0x493e0

    move-wide/from16 v56, v6

    goto :goto_1a6

    :cond_1a4
    move-wide/from16 v56, p52

    :goto_1a6
    and-int/2addr v2, v1

    if-eqz v2, :cond_1ab

    move v2, v8

    goto :goto_1ad

    :cond_1ab
    move/from16 v2, p54

    :goto_1ad
    and-int v3, v1, v9

    if-eqz v3, :cond_1b4

    move/from16 v58, v4

    goto :goto_1b6

    :cond_1b4
    move/from16 v58, p55

    :goto_1b6
    and-int v3, v1, v11

    if-eqz v3, :cond_1bd

    move/from16 v59, v4

    goto :goto_1bf

    :cond_1bd
    move/from16 v59, p56

    :goto_1bf
    and-int v3, v1, v12

    if-eqz v3, :cond_1c6

    move/from16 v60, v4

    goto :goto_1c8

    :cond_1c6
    move/from16 v60, p57

    :goto_1c8
    and-int v3, v1, v25

    if-eqz v3, :cond_1cf

    move/from16 v61, v4

    goto :goto_1d1

    :cond_1cf
    move/from16 v61, p58

    :goto_1d1
    and-int v1, v1, v27

    if-eqz v1, :cond_1d8

    move/from16 v62, v4

    goto :goto_1da

    :cond_1d8
    move/from16 v62, p59

    :goto_1da
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v11, p8

    move-object/from16 v25, v26

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    move-object/from16 v33, v35

    move-object/from16 v34, v36

    move/from16 v35, v37

    move/from16 v36, v38

    move-object/from16 v37, v0

    move/from16 v38, v39

    move/from16 v39, v40

    move/from16 v40, v41

    move-object/from16 v41, v42

    move-wide/from16 v42, v43

    move/from16 v44, v45

    move-wide/from16 v45, v46

    move-wide/from16 v47, v48

    move/from16 v49, v50

    move/from16 v50, v51

    move/from16 v51, v52

    move/from16 v52, v53

    move/from16 v53, v54

    move/from16 v54, v55

    move-wide/from16 v55, v56

    move/from16 v57, v2

    invoke-direct/range {v3 .. v62}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLjava/lang/String;IZZIIIZIILandroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/Long;IZZLjava/lang/String;JIJJIIFZIZJIIZIIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/pantanal/server/content/recommendlist/ServiceInfo;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLjava/lang/String;IZZIIIZIILandroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/Long;IZZLjava/lang/String;JIJJIIFZIZJIIZIIZIILjava/lang/Object;)Lcom/pantanal/server/content/recommendlist/ServiceInfo;
    .registers 86

    move-object/from16 v0, p0

    move/from16 v1, p60

    move/from16 v2, p61

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    goto :goto_f

    :cond_d
    move-object/from16 v3, p1

    :goto_f
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    goto :goto_18

    :cond_16
    move-object/from16 v4, p2

    :goto_18
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1f

    iget v5, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceType:I

    goto :goto_21

    :cond_1f
    move/from16 v5, p3

    :goto_21
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_28

    iget-object v6, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    goto :goto_2a

    :cond_28
    move-object/from16 v6, p4

    :goto_2a
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_31

    iget v7, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->score:F

    goto :goto_33

    :cond_31
    move/from16 v7, p5

    :goto_33
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_3a

    iget v8, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportEntrance:I

    goto :goto_3c

    :cond_3a
    move/from16 v8, p6

    :goto_3c
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_43

    iget-object v9, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    goto :goto_45

    :cond_43
    move-object/from16 v9, p7

    :goto_45
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_4c

    iget-wide v10, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->timeStamp:J

    goto :goto_4e

    :cond_4c
    move-wide/from16 v10, p8

    :goto_4e
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_55

    iget-wide v12, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->versionCode:J

    goto :goto_57

    :cond_55
    move-wide/from16 v12, p10

    :goto_57
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_5e

    iget-object v14, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    goto :goto_60

    :cond_5e
    move-object/from16 v14, p12

    :goto_60
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_67

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    goto :goto_69

    :cond_67
    move/from16 v15, p13

    :goto_69
    move/from16 p13, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_72

    iget-boolean v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    goto :goto_74

    :cond_72
    move/from16 v15, p14

    :goto_74
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_7d

    iget-boolean v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceRebuild:Z

    goto :goto_7f

    :cond_7d
    move/from16 v15, p15

    :goto_7f
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_88

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceCategory:I

    goto :goto_8a

    :cond_88
    move/from16 v15, p16

    :goto_8a
    move/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_93

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->channelType:I

    goto :goto_95

    :cond_93
    move/from16 v15, p17

    :goto_95
    const v16, 0x8000

    and-int v17, v1, v16

    move/from16 p17, v15

    if-eqz v17, :cond_a1

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentCategory:I

    goto :goto_a3

    :cond_a1
    move/from16 v15, p18

    :goto_a3
    const/high16 v17, 0x10000

    and-int v18, v1, v17

    move/from16 p18, v15

    if-eqz v18, :cond_ae

    iget-boolean v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    goto :goto_b0

    :cond_ae
    move/from16 v15, p19

    :goto_b0
    const/high16 v18, 0x20000

    and-int v19, v1, v18

    move/from16 p19, v15

    if-eqz v19, :cond_bb

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingType:I

    goto :goto_bd

    :cond_bb
    move/from16 v15, p20

    :goto_bd
    const/high16 v19, 0x40000

    and-int v20, v1, v19

    move/from16 p20, v15

    if-eqz v20, :cond_c8

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->useTemplate:I

    goto :goto_ca

    :cond_c8
    move/from16 v15, p21

    :goto_ca
    const/high16 v20, 0x80000

    and-int v21, v1, v20

    move/from16 p21, v15

    if-eqz v21, :cond_d5

    iget-object v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    goto :goto_d7

    :cond_d5
    move-object/from16 v15, p22

    :goto_d7
    const/high16 v21, 0x100000

    and-int v22, v1, v21

    move-object/from16 p22, v15

    if-eqz v22, :cond_e2

    iget-object v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    goto :goto_e4

    :cond_e2
    move-object/from16 v15, p23

    :goto_e4
    const/high16 v22, 0x200000

    and-int v22, v1, v22

    move-object/from16 p23, v15

    if-eqz v22, :cond_ef

    iget-object v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingCardOptions:Ljava/lang/String;

    goto :goto_f1

    :cond_ef
    move-object/from16 v15, p24

    :goto_f1
    const/high16 v22, 0x400000

    and-int v22, v1, v22

    move-object/from16 p24, v15

    if-eqz v22, :cond_fc

    iget-object v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentParams:Ljava/lang/String;

    goto :goto_fe

    :cond_fc
    move-object/from16 v15, p25

    :goto_fe
    const/high16 v22, 0x800000

    and-int v22, v1, v22

    move-object/from16 p25, v15

    if-eqz v22, :cond_109

    iget-object v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    goto :goto_10b

    :cond_109
    move-object/from16 v15, p26

    :goto_10b
    const/high16 v22, 0x1000000

    and-int v22, v1, v22

    move-object/from16 p26, v15

    if-eqz v22, :cond_116

    iget-object v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    goto :goto_118

    :cond_116
    move-object/from16 v15, p27

    :goto_118
    const/high16 v22, 0x2000000

    and-int v22, v1, v22

    move-object/from16 p27, v15

    if-eqz v22, :cond_123

    iget-object v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    goto :goto_125

    :cond_123
    move-object/from16 v15, p28

    :goto_125
    const/high16 v22, 0x4000000

    and-int v22, v1, v22

    move-object/from16 p28, v15

    if-eqz v22, :cond_130

    iget-object v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->utraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

    goto :goto_132

    :cond_130
    move-object/from16 v15, p29

    :goto_132
    const/high16 v22, 0x8000000

    and-int v22, v1, v22

    move-object/from16 p29, v15

    if-eqz v22, :cond_13d

    iget-object v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    goto :goto_13f

    :cond_13d
    move-object/from16 v15, p30

    :goto_13f
    const/high16 v22, 0x10000000

    and-int v22, v1, v22

    move-object/from16 p30, v15

    if-eqz v22, :cond_14a

    iget-object v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    goto :goto_14c

    :cond_14a
    move-object/from16 v15, p31

    :goto_14c
    const/high16 v22, 0x20000000

    and-int v22, v1, v22

    move-object/from16 p31, v15

    if-eqz v22, :cond_157

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cloudRemindSwitch:I

    goto :goto_159

    :cond_157
    move/from16 v15, p32

    :goto_159
    const/high16 v22, 0x40000000  # 2.0f

    and-int v22, v1, v22

    move/from16 p32, v15

    if-eqz v22, :cond_164

    iget-boolean v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->shouldFocus:Z

    goto :goto_166

    :cond_164
    move/from16 v15, p33

    :goto_166
    const/high16 v22, -0x80000000

    and-int v1, v1, v22

    if-eqz v1, :cond_16f

    iget-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTimestamp:Ljava/lang/Long;

    goto :goto_171

    :cond_16f
    move-object/from16 v1, p34

    :goto_171
    and-int/lit8 v22, v2, 0x1

    move-object/from16 p34, v1

    if-eqz v22, :cond_17a

    iget v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->groupPriority:I

    goto :goto_17c

    :cond_17a
    move/from16 v1, p35

    :goto_17c
    and-int/lit8 v22, v2, 0x2

    move/from16 p35, v1

    if-eqz v22, :cond_185

    iget-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->needToWaitCardData:Z

    goto :goto_187

    :cond_185
    move/from16 v1, p36

    :goto_187
    and-int/lit8 v22, v2, 0x4

    move/from16 p36, v1

    if-eqz v22, :cond_190

    iget-boolean v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance:Z

    goto :goto_192

    :cond_190
    move/from16 v1, p37

    :goto_192
    and-int/lit8 v22, v2, 0x8

    move/from16 p37, v1

    if-eqz v22, :cond_19b

    iget-object v1, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceLevel:Ljava/lang/String;

    goto :goto_19d

    :cond_19b
    move-object/from16 v1, p38

    :goto_19d
    and-int/lit8 v22, v2, 0x10

    move-object/from16 p12, v14

    move/from16 p33, v15

    if-eqz v22, :cond_1a8

    iget-wide v14, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneId:J

    goto :goto_1aa

    :cond_1a8
    move-wide/from16 v14, p39

    :goto_1aa
    and-int/lit8 v22, v2, 0x20

    move-wide/from16 p39, v14

    if-eqz v22, :cond_1b3

    iget v14, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cardSleeveType:I

    goto :goto_1b5

    :cond_1b3
    move/from16 v14, p41

    :goto_1b5
    and-int/lit8 v15, v2, 0x40

    move/from16 p41, v14

    if-eqz v15, :cond_1be

    iget-wide v14, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneCreateTime:J

    goto :goto_1c0

    :cond_1be
    move-wide/from16 v14, p42

    :goto_1c0
    move-wide/from16 p42, v14

    and-int/lit16 v14, v2, 0x80

    if-eqz v14, :cond_1c9

    iget-wide v14, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneUpdateTime:J

    goto :goto_1cb

    :cond_1c9
    move-wide/from16 v14, p44

    :goto_1cb
    move-wide/from16 p44, v14

    and-int/lit16 v14, v2, 0x100

    if-eqz v14, :cond_1d4

    iget v14, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneWeight:I

    goto :goto_1d6

    :cond_1d4
    move/from16 v14, p46

    :goto_1d6
    and-int/lit16 v15, v2, 0x200

    if-eqz v15, :cond_1dd

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneStatus:I

    goto :goto_1df

    :cond_1dd
    move/from16 v15, p47

    :goto_1df
    move/from16 p47, v15

    and-int/lit16 v15, v2, 0x400

    if-eqz v15, :cond_1e8

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneScore:F

    goto :goto_1ea

    :cond_1e8
    move/from16 v15, p48

    :goto_1ea
    move/from16 p48, v15

    and-int/lit16 v15, v2, 0x800

    if-eqz v15, :cond_1f3

    iget-boolean v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneShouldFocus:Z

    goto :goto_1f5

    :cond_1f3
    move/from16 v15, p49

    :goto_1f5
    move/from16 p49, v15

    and-int/lit16 v15, v2, 0x1000

    if-eqz v15, :cond_1fe

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceStatus:I

    goto :goto_200

    :cond_1fe
    move/from16 v15, p50

    :goto_200
    move/from16 p50, v15

    and-int/lit16 v15, v2, 0x2000

    if-eqz v15, :cond_209

    iget-boolean v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSceneFocus:Z

    goto :goto_20b

    :cond_209
    move/from16 v15, p51

    :goto_20b
    move/from16 p51, v15

    and-int/lit16 v15, v2, 0x4000

    move/from16 p46, v14

    if-eqz v15, :cond_216

    iget-wide v14, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTime:J

    goto :goto_218

    :cond_216
    move-wide/from16 v14, p52

    :goto_218
    and-int v16, v2, v16

    move-wide/from16 p52, v14

    if-eqz v16, :cond_221

    iget v14, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->expectSceneCnt:I

    goto :goto_223

    :cond_221
    move/from16 v14, p54

    :goto_223
    and-int v15, v2, v17

    if-eqz v15, :cond_22a

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->combinationStrategy:I

    goto :goto_22c

    :cond_22a
    move/from16 v15, p55

    :goto_22c
    and-int v16, v2, v18

    move/from16 p55, v15

    if-eqz v16, :cond_235

    iget-boolean v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->homeFlag:Z

    goto :goto_237

    :cond_235
    move/from16 v15, p56

    :goto_237
    and-int v16, v2, v19

    move/from16 p56, v15

    if-eqz v16, :cond_240

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneLevel:I

    goto :goto_242

    :cond_240
    move/from16 v15, p57

    :goto_242
    and-int v16, v2, v20

    move/from16 p57, v15

    if-eqz v16, :cond_24b

    iget v15, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentPosition:I

    goto :goto_24d

    :cond_24b
    move/from16 v15, p58

    :goto_24d
    and-int v2, v2, v21

    if-eqz v2, :cond_254

    iget-boolean v2, v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceGuaranteed:Z

    goto :goto_256

    :cond_254
    move/from16 v2, p59

    :goto_256
    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move/from16 p3, v5

    move-object/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move-object/from16 p7, v9

    move-wide/from16 p8, v10

    move-wide/from16 p10, v12

    move-object/from16 p38, v1

    move/from16 p54, v14

    move/from16 p58, v15

    move/from16 p59, v2

    invoke-virtual/range {p0 .. p59}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLjava/lang/String;IZZIIIZIILandroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/Long;IZZLjava/lang/String;JIJJIIFZIZJIIZIIZ)Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    return p0
.end method

.method public final component12()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    return p0
.end method

.method public final component13()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceRebuild:Z

    return p0
.end method

.method public final component14()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceCategory:I

    return p0
.end method

.method public final component15()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->channelType:I

    return p0
.end method

.method public final component16()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentCategory:I

    return p0
.end method

.method public final component17()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    return p0
.end method

.method public final component18()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingType:I

    return p0
.end method

.method public final component19()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->useTemplate:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component20()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final component21()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final component22()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingCardOptions:Ljava/lang/String;

    return-object p0
.end method

.method public final component23()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentParams:Ljava/lang/String;

    return-object p0
.end method

.method public final component24()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    return-object p0
.end method

.method public final component25()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    return-object p0
.end method

.method public final component26()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public final component27()Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->utraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

    return-object p0
.end method

.method public final component28()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    return-object p0
.end method

.method public final component29()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceType:I

    return p0
.end method

.method public final component30()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cloudRemindSwitch:I

    return p0
.end method

.method public final component31()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->shouldFocus:Z

    return p0
.end method

.method public final component32()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public final component33()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->groupPriority:I

    return p0
.end method

.method public final component34()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->needToWaitCardData:Z

    return p0
.end method

.method public final component35()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance:Z

    return p0
.end method

.method public final component36()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceLevel:Ljava/lang/String;

    return-object p0
.end method

.method public final component37()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneId:J

    return-wide v0
.end method

.method public final component38()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cardSleeveType:I

    return p0
.end method

.method public final component39()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneCreateTime:J

    return-wide v0
.end method

.method public final component4()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    return-object p0
.end method

.method public final component40()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneUpdateTime:J

    return-wide v0
.end method

.method public final component41()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneWeight:I

    return p0
.end method

.method public final component42()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneStatus:I

    return p0
.end method

.method public final component43()F
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneScore:F

    return p0
.end method

.method public final component44()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneShouldFocus:Z

    return p0
.end method

.method public final component45()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceStatus:I

    return p0
.end method

.method public final component46()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSceneFocus:Z

    return p0
.end method

.method public final component47()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTime:J

    return-wide v0
.end method

.method public final component48()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->expectSceneCnt:I

    return p0
.end method

.method public final component49()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->combinationStrategy:I

    return p0
.end method

.method public final component5()F
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->score:F

    return p0
.end method

.method public final component50()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->homeFlag:Z

    return p0
.end method

.method public final component51()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneLevel:I

    return p0
.end method

.method public final component52()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentPosition:I

    return p0
.end method

.method public final component53()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceGuaranteed:Z

    return p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportEntrance:I

    return p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->timeStamp:J

    return-wide v0
.end method

.method public final component9()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->versionCode:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLjava/lang/String;IZZIIIZIILandroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/Long;IZZLjava/lang/String;JIJJIIFZIZJIIZIIZ)Lcom/pantanal/server/content/recommendlist/ServiceInfo;
    .registers 121
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FI",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "IZZIIIZII",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/lang/Long;",
            "IZZ",
            "Ljava/lang/String;",
            "JIJJIIFZIZJIIZIIZ)",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move/from16 v32, p32

    move/from16 v33, p33

    move-object/from16 v34, p34

    move/from16 v35, p35

    move/from16 v36, p36

    move/from16 v37, p37

    move-object/from16 v38, p38

    move-wide/from16 v39, p39

    move/from16 v41, p41

    move-wide/from16 v42, p42

    move-wide/from16 v44, p44

    move/from16 v46, p46

    move/from16 v47, p47

    move/from16 v48, p48

    move/from16 v49, p49

    move/from16 v50, p50

    move/from16 v51, p51

    move-wide/from16 v52, p52

    move/from16 v54, p54

    move/from16 v55, p55

    move/from16 v56, p56

    move/from16 v57, p57

    move/from16 v58, p58

    move/from16 v59, p59

    const-string v0, "serviceId"

    move-object/from16 p0, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceInstanceId"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportCardSizes"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeToCardType"

    move-object/from16 v1, p30

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeToCardConfig"

    move-object/from16 v1, p31

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v60, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    move-object/from16 v0, v60

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v59}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJLjava/lang/String;IZZIIIZIILandroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/Long;IZZLjava/lang/String;JIJJIIFZIZJIIZIIZ)V

    return-object v60
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceType:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceType:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->score:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->score:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    return v2

    :cond_47
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportEntrance:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportEntrance:I

    if-eq v1, v3, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-wide v3, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->timeStamp:J

    iget-wide v5, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->timeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_62

    return v2

    :cond_62
    iget-wide v3, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->versionCode:J

    iget-wide v5, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->versionCode:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6b

    return v2

    :cond_6b
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    return v2

    :cond_76
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    if-eq v1, v3, :cond_7d

    return v2

    :cond_7d
    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    iget-boolean v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    if-eq v1, v3, :cond_84

    return v2

    :cond_84
    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceRebuild:Z

    iget-boolean v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceRebuild:Z

    if-eq v1, v3, :cond_8b

    return v2

    :cond_8b
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceCategory:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceCategory:I

    if-eq v1, v3, :cond_92

    return v2

    :cond_92
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->channelType:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->channelType:I

    if-eq v1, v3, :cond_99

    return v2

    :cond_99
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentCategory:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentCategory:I

    if-eq v1, v3, :cond_a0

    return v2

    :cond_a0
    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    iget-boolean v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    if-eq v1, v3, :cond_a7

    return v2

    :cond_a7
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingType:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingType:I

    if-eq v1, v3, :cond_ae

    return v2

    :cond_ae
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->useTemplate:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->useTemplate:I

    if-eq v1, v3, :cond_b5

    return v2

    :cond_b5
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    return v2

    :cond_c0
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    return v2

    :cond_cb
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingCardOptions:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingCardOptions:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    return v2

    :cond_d6
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentParams:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentParams:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    return v2

    :cond_e1
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ec

    return v2

    :cond_ec
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f7

    return v2

    :cond_f7
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    return v2

    :cond_102
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->utraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->utraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10d

    return v2

    :cond_10d
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_118

    return v2

    :cond_118
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_123

    return v2

    :cond_123
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cloudRemindSwitch:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cloudRemindSwitch:I

    if-eq v1, v3, :cond_12a

    return v2

    :cond_12a
    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->shouldFocus:Z

    iget-boolean v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->shouldFocus:Z

    if-eq v1, v3, :cond_131

    return v2

    :cond_131
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTimestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTimestamp:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13c

    return v2

    :cond_13c
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->groupPriority:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->groupPriority:I

    if-eq v1, v3, :cond_143

    return v2

    :cond_143
    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->needToWaitCardData:Z

    iget-boolean v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->needToWaitCardData:Z

    if-eq v1, v3, :cond_14a

    return v2

    :cond_14a
    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance:Z

    iget-boolean v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance:Z

    if-eq v1, v3, :cond_151

    return v2

    :cond_151
    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceLevel:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceLevel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15c

    return v2

    :cond_15c
    iget-wide v3, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneId:J

    iget-wide v5, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_165

    return v2

    :cond_165
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cardSleeveType:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cardSleeveType:I

    if-eq v1, v3, :cond_16c

    return v2

    :cond_16c
    iget-wide v3, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneCreateTime:J

    iget-wide v5, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneCreateTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_175

    return v2

    :cond_175
    iget-wide v3, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneUpdateTime:J

    iget-wide v5, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneUpdateTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_17e

    return v2

    :cond_17e
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneWeight:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneWeight:I

    if-eq v1, v3, :cond_185

    return v2

    :cond_185
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneStatus:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneStatus:I

    if-eq v1, v3, :cond_18c

    return v2

    :cond_18c
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneScore:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneScore:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19f

    return v2

    :cond_19f
    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneShouldFocus:Z

    iget-boolean v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneShouldFocus:Z

    if-eq v1, v3, :cond_1a6

    return v2

    :cond_1a6
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceStatus:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceStatus:I

    if-eq v1, v3, :cond_1ad

    return v2

    :cond_1ad
    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSceneFocus:Z

    iget-boolean v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSceneFocus:Z

    if-eq v1, v3, :cond_1b4

    return v2

    :cond_1b4
    iget-wide v3, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTime:J

    iget-wide v5, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1bd

    return v2

    :cond_1bd
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->expectSceneCnt:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->expectSceneCnt:I

    if-eq v1, v3, :cond_1c4

    return v2

    :cond_1c4
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->combinationStrategy:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->combinationStrategy:I

    if-eq v1, v3, :cond_1cb

    return v2

    :cond_1cb
    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->homeFlag:Z

    iget-boolean v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->homeFlag:Z

    if-eq v1, v3, :cond_1d2

    return v2

    :cond_1d2
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneLevel:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneLevel:I

    if-eq v1, v3, :cond_1d9

    return v2

    :cond_1d9
    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentPosition:I

    iget v3, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentPosition:I

    if-eq v1, v3, :cond_1e0

    return v2

    :cond_1e0
    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceGuaranteed:Z

    iget-boolean p1, p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceGuaranteed:Z

    if-eq p0, p1, :cond_1e7

    return v2

    :cond_1e7
    return v0
.end method

.method public final getCannotReduceRecommend()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    return p0
.end method

.method public final getCardSleeveType()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cardSleeveType:I

    return p0
.end method

.method public final getChannelType()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->channelType:I

    return p0
.end method

.method public final getCloudRemindSwitch()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cloudRemindSwitch:I

    return p0
.end method

.method public final getCombinationStrategy()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->combinationStrategy:I

    return p0
.end method

.method public final getExpectSceneCnt()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->expectSceneCnt:I

    return p0
.end method

.method public final getExtras()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getFocusTime()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTime:J

    return-wide v0
.end method

.method public final getFocusTimestamp()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public final getForceGuaranteed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceGuaranteed:Z

    return p0
.end method

.method public final getForceRebuild()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceRebuild:Z

    return p0
.end method

.method public final getGroupPriority()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->groupPriority:I

    return p0
.end method

.method public final getHomeFlag()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->homeFlag:Z

    return p0
.end method

.method public final getHostPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getInitData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstanceId()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getIntentCategory()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentCategory:I

    return p0
.end method

.method public final getIntentId()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getIntentParams()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentParams:Ljava/lang/String;

    return-object p0
.end method

.method public final getIntentPosition()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentPosition:I

    return p0
.end method

.method public final getNeedToWaitCardData()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->needToWaitCardData:Z

    return p0
.end method

.method public final getPolicy()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public final getSceneCreateTime()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneCreateTime:J

    return-wide v0
.end method

.method public final getSceneId()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneId:J

    return-wide v0
.end method

.method public final getSceneLevel()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneLevel:I

    return p0
.end method

.method public final getSceneScore()F
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneScore:F

    return p0
.end method

.method public final getSceneShouldFocus()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneShouldFocus:Z

    return p0
.end method

.method public final getSceneStatus()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneStatus:I

    return p0
.end method

.method public final getSceneUpdateTime()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneUpdateTime:J

    return-wide v0
.end method

.method public final getSceneWeight()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneWeight:I

    return p0
.end method

.method public final getScore()F
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->score:F

    return p0
.end method

.method public final getSeedlingCardOptions()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingCardOptions:Ljava/lang/String;

    return-object p0
.end method

.method public final getSeedlingType()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingType:I

    return p0
.end method

.method public final getServiceCategory()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceCategory:I

    return p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceInstanceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceLevel()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceLevel:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceStatus()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceStatus:I

    return p0
.end method

.method public final getServiceType()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceType:I

    return p0
.end method

.method public final getShouldFocus()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->shouldFocus:Z

    return p0
.end method

.method public final getSizeToCardConfig()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final getSizeToCardType()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    return-object p0
.end method

.method public final getSubdomain()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    return-object p0
.end method

.method public final getSupportCardSizes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    return-object p0
.end method

.method public final getSupportEntrance()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportEntrance:I

    return p0
.end method

.method public final getTimeStamp()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->timeStamp:J

    return-wide v0
.end method

.method public final getUseTemplate()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->useTemplate:I

    return p0
.end method

.method public final getUtraceContext()Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->utraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

    return-object p0
.end method

.method public final getVersionCode()J
    .registers 3

    iget-wide v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->versionCode:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceType:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->score:F

    invoke-static {v0, v1, v2}, Landroidx/window/embedding/d;->a(FII)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportEntrance:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_32

    move v1, v2

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_36
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->timeStamp:J

    const/16 v1, 0x1f

    invoke-static {v3, v4, v0, v1}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-wide v3, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->versionCode:J

    invoke-static {v3, v4, v0, v1}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    if-nez v1, :cond_4d

    move v1, v2

    goto :goto_51

    :cond_4d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_51
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_62

    move v1, v3

    :cond_62
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceRebuild:Z

    if-eqz v1, :cond_6a

    move v1, v3

    :cond_6a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceCategory:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->channelType:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentCategory:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    if-eqz v1, :cond_86

    move v1, v3

    :cond_86
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingType:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->useTemplate:I

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    if-nez v1, :cond_9d

    move v1, v2

    goto :goto_a1

    :cond_9d
    invoke-virtual {v1}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    :goto_a1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    if-nez v1, :cond_aa

    move v1, v2

    goto :goto_ae

    :cond_aa
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_ae
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingCardOptions:Ljava/lang/String;

    if-nez v1, :cond_b7

    move v1, v2

    goto :goto_bb

    :cond_b7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_bb
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentParams:Ljava/lang/String;

    if-nez v1, :cond_c4

    move v1, v2

    goto :goto_c8

    :cond_c4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_c8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    if-nez v1, :cond_d1

    move v1, v2

    goto :goto_d5

    :cond_d1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_d5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    if-nez v1, :cond_de

    move v1, v2

    goto :goto_e2

    :cond_de
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_e2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    if-nez v1, :cond_eb

    move v1, v2

    goto :goto_ef

    :cond_eb
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_ef
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->utraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

    if-nez v1, :cond_f8

    move v1, v2

    goto :goto_fc

    :cond_f8
    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContext;->hashCode()I

    move-result v1

    :goto_fc
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cloudRemindSwitch:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->shouldFocus:Z

    if-eqz v1, :cond_11e

    move v1, v3

    :cond_11e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTimestamp:Ljava/lang/Long;

    if-nez v1, :cond_127

    move v1, v2

    goto :goto_12b

    :cond_127
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_12b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->groupPriority:I

    const/16 v4, 0x1f

    invoke-static {v1, v0, v4}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->needToWaitCardData:Z

    if-eqz v1, :cond_13b

    move v1, v3

    :cond_13b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance:Z

    if-eqz v1, :cond_143

    move v1, v3

    :cond_143
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceLevel:Ljava/lang/String;

    if-nez v1, :cond_14b

    goto :goto_14f

    :cond_14b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_14f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneId:J

    const/16 v4, 0x1f

    invoke-static {v1, v2, v0, v4}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cardSleeveType:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-wide v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneCreateTime:J

    invoke-static {v1, v2, v0, v4}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneUpdateTime:J

    invoke-static {v1, v2, v0, v4}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneWeight:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneStatus:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneScore:F

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/d;->a(FII)I

    move-result v0

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneShouldFocus:Z

    if-eqz v1, :cond_187

    move v1, v3

    :cond_187
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceStatus:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSceneFocus:Z

    if-eqz v1, :cond_197

    move v1, v3

    :cond_197
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTime:J

    const/16 v4, 0x1f

    invoke-static {v1, v2, v0, v4}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->expectSceneCnt:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->combinationStrategy:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->homeFlag:Z

    if-eqz v1, :cond_1b5

    move v1, v3

    :cond_1b5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneLevel:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentPosition:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceGuaranteed:Z

    if-eqz p0, :cond_1cb

    goto :goto_1cc

    :cond_1cb
    move v3, p0

    :goto_1cc
    add-int/2addr v0, v3

    return v0
.end method

.method public final isGuaranteedCard()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    return p0
.end method

.method public final isParamsSendToSeedling()I
    .registers 1

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    return p0
.end method

.method public final isSceneFocus()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSceneFocus:Z

    return p0
.end method

.method public final isSupportEntrance(I)Z
    .registers 4

    iget p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportEntrance:I

    const/4 v0, 0x0

    if-gez p0, :cond_6

    return v0

    :cond_6
    and-int v1, p0, p1

    if-eq v1, p1, :cond_c

    if-nez p0, :cond_d

    :cond_c
    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public final isSupportMultiInstance()Z
    .registers 1

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance:Z

    return p0
.end method

.method public final isSupportSize(I)Z
    .registers 2

    iget-object p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setCannotReduceRecommend(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    return-void
.end method

.method public final setCardSleeveType(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cardSleeveType:I

    return-void
.end method

.method public final setChannelType(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->channelType:I

    return-void
.end method

.method public final setCloudRemindSwitch(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cloudRemindSwitch:I

    return-void
.end method

.method public final setCombinationStrategy(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->combinationStrategy:I

    return-void
.end method

.method public final setExpectSceneCnt(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->expectSceneCnt:I

    return-void
.end method

.method public final setFocusTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTime:J

    return-void
.end method

.method public final setFocusTimestamp(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public final setForceGuaranteed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceGuaranteed:Z

    return-void
.end method

.method public final setForceRebuild(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceRebuild:Z

    return-void
.end method

.method public final setGroupPriority(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->groupPriority:I

    return-void
.end method

.method public final setGuaranteedCard(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    return-void
.end method

.method public final setHomeFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->homeFlag:Z

    return-void
.end method

.method public final setHostPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    return-void
.end method

.method public final setInstanceId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    return-void
.end method

.method public final setIntentCategory(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentCategory:I

    return-void
.end method

.method public final setIntentId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    return-void
.end method

.method public final setIntentParams(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentParams:Ljava/lang/String;

    return-void
.end method

.method public final setIntentPosition(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentPosition:I

    return-void
.end method

.method public final setNeedToWaitCardData(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->needToWaitCardData:Z

    return-void
.end method

.method public final setParamsSendToSeedling(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    return-void
.end method

.method public final setPolicy(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    return-void
.end method

.method public final setSceneCreateTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneCreateTime:J

    return-void
.end method

.method public final setSceneFocus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSceneFocus:Z

    return-void
.end method

.method public final setSceneId(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneId:J

    return-void
.end method

.method public final setSceneLevel(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneLevel:I

    return-void
.end method

.method public final setSceneScore(F)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneScore:F

    return-void
.end method

.method public final setSceneShouldFocus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneShouldFocus:Z

    return-void
.end method

.method public final setSceneStatus(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneStatus:I

    return-void
.end method

.method public final setSceneUpdateTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneUpdateTime:J

    return-void
.end method

.method public final setSceneWeight(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneWeight:I

    return-void
.end method

.method public final setSeedlingCardOptions(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingCardOptions:Ljava/lang/String;

    return-void
.end method

.method public final setSeedlingType(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingType:I

    return-void
.end method

.method public final setServiceCategory(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceCategory:I

    return-void
.end method

.method public final setServiceInstanceId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    return-void
.end method

.method public final setServiceLevel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceLevel:Ljava/lang/String;

    return-void
.end method

.method public final setServiceStatus(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceStatus:I

    return-void
.end method

.method public final setShouldFocus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->shouldFocus:Z

    return-void
.end method

.method public final setSizeToCardConfig(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    return-void
.end method

.method public final setSizeToCardType(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    return-void
.end method

.method public final setSubdomain(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    return-void
.end method

.method public final setSupportMultiInstance(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance:Z

    return-void
.end method

.method public final setUseTemplate(I)V
    .registers 2

    iput p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->useTemplate:I

    return-void
.end method

.method public final setUtraceContext(Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 2

    iput-object p1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->utraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "ServiceInfo(serviceId="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceInstanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportCardSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportCardSizes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", supportEntrance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->supportEntrance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->initData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->versionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", subdomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->subdomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isParamsSendToSeedling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isParamsSendToSeedling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cannotReduceRecommend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cannotReduceRecommend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceRebuild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceRebuild:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serviceCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->channelType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intentCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isGuaranteedCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isGuaranteedCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", seedlingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->useTemplate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->extras:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->hostPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seedlingCardOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->seedlingCardOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intentParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->instanceId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", utraceContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->utraceContext:Lcom/oplus/utrace/sdk/UTraceContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeToCardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardType:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeToCardConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sizeToCardConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cloudRemindSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cloudRemindSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shouldFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->shouldFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", focusTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", groupPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->groupPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needToWaitCardData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->needToWaitCardData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportMultiInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serviceLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sceneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cardSleeveType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->cardSleeveType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sceneCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sceneUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sceneWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sceneStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sceneScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sceneShouldFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneShouldFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serviceStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->serviceStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSceneFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSceneFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", focusTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->focusTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expectSceneCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->expectSceneCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", combinationStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->combinationStrategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", homeFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->homeFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sceneLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->sceneLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->intentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forceGuaranteed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->forceGuaranteed:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld/b;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
