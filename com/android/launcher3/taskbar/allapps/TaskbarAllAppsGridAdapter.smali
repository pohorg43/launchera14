.class public final Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsGridAdapter;
.super Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter<",
        "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "*>;[",
            "Lcom/android/launcher3/allapps/BaseAdapterProvider;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterProviders"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V

    return-void
.end method

.method private final refreshManagerView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)V
    .registers 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0313

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->inSearch()Z

    move-result p0

    const/16 v1, 0x8

    if-eqz p0, :cond_30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_37

    :cond_30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_37
    return-void
.end method


# virtual methods
.method public onBindViewHolderByViewTypeAllAppsDivider(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)V
    .registers 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->onBindViewHolderByViewTypeAllAppsDivider(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)V

    return-void
.end method
