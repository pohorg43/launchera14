.class public final Lcom/android/launcher3/search/SearchEntryStateAnimation$start$8;
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
.field private final mIndicatorScrollX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field public final synthetic this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;FFLandroid/view/animation/Interpolator;)V
    .registers 13

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$8;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMToSearchEntry$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v4, 0x0

    const/high16 v5, 0x437a0000  # 250.0f

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_26

    :cond_19
    new-instance v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v4, 0x0

    const/high16 v5, 0x437a0000  # 250.0f

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_26
    iput-object v7, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$8;->mIndicatorScrollX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final getMIndicatorScrollX()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$8;->mIndicatorScrollX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public onUpdate(FZ)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$8;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-static {p1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMIndicator$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$8;->mIndicatorScrollX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget p0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p1, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setIndicatorScrollX(F)V

    return-void
.end method
