.class Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$3;
.super Lcom/coui/appcompat/viewpager/COUIViewPager2$DataSetChangeObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->f(Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;Landroidx/recyclerview/widget/RecyclerView;)V
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

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$3;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$DataSetChangeObserver;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2$1;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider$3;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;

    invoke-virtual {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2$PageAwareAccessibilityProvider;->s()V

    return-void
.end method
