.class public final Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$FragmentViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentViewHolder"
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .registers 2
    .param p1  # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
