.class public final Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable$Companion;

.field private static final RADIUS_NUM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LauncherUSCardDrawable"


# instance fields
.field private cardView:Landroid/view/View;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;->Companion:Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "originalView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;->cardView:Landroid/view/View;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;->cardView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public final getClipIconRadius()[F
    .registers 6

    const/16 v0, 0x8

    new-array v1, v0, [F

    const/4 v2, 0x4

    new-array v2, v2, [F

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;->cardView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/launcher3/card/LauncherCardUtil;->getCardContainerOfSmartView(Landroid/view/View;I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    instance-of v4, p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v4, :cond_18

    check-cast p0, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getChildCardRadiusArr()[F

    move-result-object v2

    :cond_18
    :goto_18
    if-ge v3, v0, :cond_23

    div-int/lit8 p0, v3, 0x2

    aget p0, v2, p0

    aput p0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_23
    return-object v1
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/LauncherUSCardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
