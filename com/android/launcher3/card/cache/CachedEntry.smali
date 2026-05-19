.class public final Lcom/android/launcher3/card/cache/CachedEntry;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mCardId:I

.field private mCardType:I

.field private mInstantCardUrl:Ljava/lang/String;

.field private mUIData:Lpantanal/app/bean/PantanalUIData;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mCardId:I

    iput p2, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mCardType:I

    iput-object p3, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mInstantCardUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILpantanal/app/bean/PantanalUIData;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mCardId:I

    iput p2, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mCardType:I

    iput-object p3, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mUIData:Lpantanal/app/bean/PantanalUIData;

    return-void
.end method


# virtual methods
.method public getCardId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mCardId:I

    return p0
.end method

.method public getInstantCardUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mInstantCardUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUIData()Lpantanal/app/bean/PantanalUIData;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/cache/CachedEntry;->mUIData:Lpantanal/app/bean/PantanalUIData;

    return-object p0
.end method
