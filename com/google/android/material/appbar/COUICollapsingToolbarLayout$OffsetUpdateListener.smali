.class Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->access$100(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->access$100(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getIsTitleCenterStyle()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->fixCollapsingTitleAlpha()V

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_20
    return-void
.end method
