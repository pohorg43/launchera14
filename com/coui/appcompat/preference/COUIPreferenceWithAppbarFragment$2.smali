.class Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic b:Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;Lcom/google/android/material/appbar/AppBarLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$2;->b:Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$2;->a:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$2;->b:Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->access$000(Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_13

    :cond_e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$2;->a:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$2;->b:Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;

    invoke-static {v2}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->access$100(Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;)I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2f
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment$2;->b:Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;->access$000(Lcom/coui/appcompat/preference/COUIPreferenceWithAppbarFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3c
    return-void
.end method
