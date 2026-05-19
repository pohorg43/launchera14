.class public Lcom/coui/appcompat/viewpager/COUIFakeDrag;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

.field public final b:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Landroid/view/VelocityTracker;

.field public e:J


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iput-object p2, p0, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->b:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    iput-object p3, p0, Lcom/coui/appcompat/viewpager/COUIFakeDrag;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
