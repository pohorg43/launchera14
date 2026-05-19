.class Lcom/coui/appcompat/viewpager/COUIViewPager2$SmoothScrollToPosition;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmoothScrollToPosition"
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(ILandroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$SmoothScrollToPosition;->a:I

    iput-object p2, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$SmoothScrollToPosition;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$SmoothScrollToPosition;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$SmoothScrollToPosition;->a:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
