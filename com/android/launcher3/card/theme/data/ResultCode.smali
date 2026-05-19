.class public abstract Lcom/android/launcher3/card/theme/data/ResultCode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/data/ResultCode$SUCCESS;,
        Lcom/android/launcher3/card/theme/data/ResultCode$InvalidSize;,
        Lcom/android/launcher3/card/theme/data/ResultCode$CardCreatedFail;,
        Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;
    }
.end annotation


# instance fields
.field private final cardName:Ljava/lang/String;

.field private final code:I

.field private final oldCardName:Ljava/lang/String;

.field private final originItemInfoId:I

.field private final reason:Ljava/lang/String;

.field private final targetItemId:I

.field private final targetItemInfoId:I

.field private final targetProviderName:Ljava/lang/String;

.field private final themeInfo:Ljava/lang/String;


# direct methods
.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->originItemInfoId:I

    iput p2, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->targetItemInfoId:I

    iput p3, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->targetItemId:I

    iput-object p4, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->targetProviderName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->reason:Ljava/lang/String;

    iput p6, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->code:I

    iput-object p7, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->themeInfo:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->cardName:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->oldCardName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/card/theme/data/ResultCode;-><init>(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCardName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->cardName:Ljava/lang/String;

    return-object p0
.end method

.method public final getCode()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->code:I

    return p0
.end method

.method public final getOldCardName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->oldCardName:Ljava/lang/String;

    return-object p0
.end method

.method public final getOriginItemInfoId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->originItemInfoId:I

    return p0
.end method

.method public final getReason()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetItemId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->targetItemId:I

    return p0
.end method

.method public final getTargetItemInfoId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->targetItemInfoId:I

    return p0
.end method

.method public final getTargetProviderName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->targetProviderName:Ljava/lang/String;

    return-object p0
.end method

.method public final getThemeInfo()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ResultCode;->themeInfo:Ljava/lang/String;

    return-object p0
.end method
