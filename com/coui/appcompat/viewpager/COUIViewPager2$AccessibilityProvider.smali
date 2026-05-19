.class abstract Lcom/coui/appcompat/viewpager/COUIViewPager2$AccessibilityProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AccessibilityProvider"
.end annotation


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Lcom/coui/appcompat/viewpager/COUIViewPager2$1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public b(ILandroid/os/Bundle;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 2
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 2
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not implemented."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1  # Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public g(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    return-void
.end method

.method public h(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2
    .param p1  # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public i(I)Z
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j(ILandroid/os/Bundle;)Z
    .registers 3

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k()V
    .registers 1

    return-void
.end method

.method public l()Ljava/lang/CharSequence;
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not implemented."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1  # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public n()V
    .registers 1

    return-void
.end method

.method public o()V
    .registers 1

    return-void
.end method

.method public p()V
    .registers 1

    return-void
.end method

.method public q()V
    .registers 1

    return-void
.end method
