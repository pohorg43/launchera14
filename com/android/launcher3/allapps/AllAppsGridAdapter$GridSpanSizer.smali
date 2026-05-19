.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridSpanSizer"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget p1, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_20

    :catch_11
    move-exception v0

    const-string v1, "getSpanSize get position:"

    const-string v2, "\'s viewType e:"

    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "AppsGridAdapter"

    invoke-static {v0, p1, v1}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_20
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->access$000(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    invoke-static {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isIconViewType(I)Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isBranchSuggestedApp(I)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_4f

    :cond_37
    const/high16 v1, 0x400000

    if-ne p1, v1, :cond_3d

    const/4 p0, 0x2

    return p0

    :cond_3d
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getAdapterProvider(I)Lcom/android/launcher3/allapps/BaseAdapterProvider;

    move-result-object v1

    if-eqz v1, :cond_4e

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAppsPerRow:I

    invoke-virtual {v1, p1, p0}, Lcom/android/launcher3/allapps/BaseAdapterProvider;->getItemsPerRow(II)I

    move-result p0

    div-int/2addr v0, p0

    :cond_4e
    return v0

    :cond_4f
    :goto_4f
    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAppsPerRow:I

    div-int/2addr v0, p0

    return v0
.end method
