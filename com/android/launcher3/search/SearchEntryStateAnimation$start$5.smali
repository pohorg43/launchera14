.class public final Lcom/android/launcher3/search/SearchEntryStateAnimation$start$5;
.super Landroidx/dynamicanimation/animation/FloatValueHolder;
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
.field public final synthetic this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;F)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$5;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    return-void
.end method


# virtual methods
.method public setValue(F)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$5;->this$0:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-static {p0}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->access$getMIndicator$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBgWidthOffset(F)V

    return-void
.end method
