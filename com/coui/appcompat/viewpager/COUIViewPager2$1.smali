.class Lcom/coui/appcompat/viewpager/COUIViewPager2$1;
.super Lcom/coui/appcompat/viewpager/COUIViewPager2$DataSetChangeObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$1;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2$DataSetChangeObserver;-><init>(Lcom/coui/appcompat/viewpager/COUIViewPager2$1;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$1;->a:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->e:Z

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->l:Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;

    iput-boolean v0, p0, Lcom/coui/appcompat/viewpager/COUIScrollEventAdapter;->l:Z

    return-void
.end method
