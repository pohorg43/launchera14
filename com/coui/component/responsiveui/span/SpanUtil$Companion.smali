.class public final Lcom/coui/component/responsiveui/span/SpanUtil$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/component/responsiveui/span/SpanUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSpanUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpanUtil.kt\ncom/coui/component/responsiveui/span/SpanUtil$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic calculateGapBetweenSpans$default(Lcom/coui/component/responsiveui/span/SpanUtil$Companion;IIIIIILjava/lang/Object;)F
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x1

    :cond_5
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coui/component/responsiveui/span/SpanUtil$Companion;->calculateGapBetweenSpans(IIIII)F

    move-result p0

    return p0
.end method

.method public static synthetic calculateSpanCount$default(Lcom/coui/component/responsiveui/span/SpanUtil$Companion;Lcom/coui/component/responsiveui/unit/Dp;ILcom/coui/component/responsiveui/unit/Dp;IILjava/lang/Object;)I
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    move p4, p2

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/component/responsiveui/span/SpanUtil$Companion;->calculateSpanCount(Lcom/coui/component/responsiveui/unit/Dp;ILcom/coui/component/responsiveui/unit/Dp;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final calculateGapBetweenSpans(IIIII)F
    .registers 8

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-le p2, v0, :cond_6

    move v1, v0

    goto :goto_7

    :cond_6
    move v1, p0

    :goto_7
    if-eqz v1, :cond_27

    if-ltz p5, :cond_c

    move p0, v0

    :cond_c
    if-eqz p0, :cond_1f

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p1, p4

    mul-int/2addr p3, p2

    sub-int/2addr p1, p3

    int-to-float p0, p1

    int-to-float p1, p2

    const/high16 p2, 0x3f800000  # 1.0f

    sub-float/2addr p1, p2

    div-float/2addr p0, p1

    int-to-float p1, p5

    invoke-static {p0, p1}, Ly4/h;->a(FF)F

    move-result p0

    return p0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minGap must be equal or greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spanCounts must be greater than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final calculateSpanCount(II)I
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_6

    move v1, p0

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    if-eqz v1, :cond_30

    if-lez p2, :cond_d

    move v1, p0

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    if-eqz v1, :cond_24

    if-gt p2, p1, :cond_13

    goto :goto_14

    :cond_13
    move p0, v0

    :goto_14
    if-eqz p0, :cond_18

    div-int/2addr p1, p2

    return p1

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "totalColumns must be equal or greater than columnsPerSpan"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "columnsPerSpan must be positive"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "totalColumns must be positive"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final calculateSpanCount(Lcom/coui/component/responsiveui/unit/Dp;ILcom/coui/component/responsiveui/unit/Dp;I)I
    .registers 5

    const-string p0, "baseWidth"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "layoutGridWindowWidth"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-lt p2, p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-eqz p0, :cond_21

    invoke-virtual {p3, p1}, Lcom/coui/component/responsiveui/unit/Dp;->div(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p0

    int-to-float p1, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    if-ge p0, p4, :cond_1f

    goto :goto_20

    :cond_1f
    move p4, p0

    :goto_20
    return p4

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spanCountPerBaseWidth must be equal or greater than 1"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDEFAULT_BASE_WIDTH()Lcom/coui/component/responsiveui/unit/Dp;
    .registers 1

    invoke-static {}, Lcom/coui/component/responsiveui/span/SpanUtil;->access$getDEFAULT_BASE_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    return-object p0
.end method
