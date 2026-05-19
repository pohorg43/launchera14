.class public final Lcom/coui/component/responsiveui/span/SpanUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/span/SpanUtil$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSpanUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpanUtil.kt\ncom/coui/component/responsiveui/span/SpanUtil\n+ 2 Dp.kt\ncom/coui/component/responsiveui/unit/DpKt\n*L\n1#1,77:1\n57#2:78\n*S KotlinDebug\n*F\n+ 1 SpanUtil.kt\ncom/coui/component/responsiveui/span/SpanUtil\n*L\n26#1:78\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/component/responsiveui/span/SpanUtil$Companion;

.field public static final DEFAULT_COLUMNS_PER_SPAN:I = 0x4

.field public static final a:Lcom/coui/component/responsiveui/unit/Dp;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/coui/component/responsiveui/span/SpanUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/span/SpanUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/span/SpanUtil;->Companion:Lcom/coui/component/responsiveui/span/SpanUtil$Companion;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    const/16 v1, 0x168

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    sput-object v0, Lcom/coui/component/responsiveui/span/SpanUtil;->a:Lcom/coui/component/responsiveui/unit/Dp;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_BASE_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;
    .registers 1

    sget-object v0, Lcom/coui/component/responsiveui/span/SpanUtil;->a:Lcom/coui/component/responsiveui/unit/Dp;

    return-object v0
.end method
