.class public Lcom/coui/appcompat/navigationrail/COUINavigationRailMenuView;
.super Lcom/google/android/material/navigationrail/NavigationRailMenuView;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/coui/appcompat/navigationrail/COUINavigationRailMenuView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/navigationrail/COUINavigationRailMenuView$1;-><init>(Lcom/coui/appcompat/navigationrail/COUINavigationRailMenuView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
    .registers 2
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailItemView;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/navigationrail/COUINavigationRailItemView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
