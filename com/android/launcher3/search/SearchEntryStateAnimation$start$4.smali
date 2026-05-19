.class public final Lcom/android/launcher3/search/SearchEntryStateAnimation$start$4;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/search/SearchEntryStateAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final mBgAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field public final synthetic this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroid/view/animation/Interpolator;)V
    .registers 11

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$4;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMToState$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000  # 255.0f

    const/4 v4, 0x0

    const/high16 v5, 0x437a0000  # 250.0f

    move-object v0, v7

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_29

    :cond_1b
    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v2, 0x437f0000  # 255.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x437a0000  # 250.0f

    move-object v0, v7

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_29
    iput-object v7, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$4;->mBgAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final getMBgAlpha()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$4;->mBgAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public onUpdate(FZ)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$4;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-static {p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMIndicator$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$4;->mBgAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p2, p2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBgAlpha(I)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$4;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-static {p0}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMIndicator$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
