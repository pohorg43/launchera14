.class Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$2;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$2;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;

    invoke-virtual {p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->r(I)V

    return p2
.end method
