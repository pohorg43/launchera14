.class public Lcom/coui/appcompat/tips/marquee/COUIMarqueeTopTips;
.super Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tips/marquee/COUIMarqueeTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tips/marquee/COUIMarqueeTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public d()Lcom/coui/appcompat/tips/def/IDefaultTopTips;
    .registers 1

    invoke-super {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTips;->d()Lcom/coui/appcompat/tips/def/IDefaultTopTips;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;

    return-object p0
.end method
