.class public Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field public final a:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;->a:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/tablayout/COUITab;)V
    .registers 2

    return-void
.end method

.method public b(Lcom/coui/appcompat/tablayout/COUITab;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;->a:Landroidx/viewpager/widget/ViewPager;

    iget p1, p1, Lcom/coui/appcompat/tablayout/COUITab;->f:I

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public c(Lcom/coui/appcompat/tablayout/COUITab;)V
    .registers 2

    return-void
.end method
