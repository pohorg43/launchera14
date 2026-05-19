.class final Lcom/android/launcher3/bottomsearch/BottomSearchImpl$removeBottomWidget$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->removeBottomWidget(Landroid/content/ComponentName;Lcom/android/launcher/Launcher;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl$removeBottomWidget$1;->$launcher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl$removeBottomWidget$1;->invoke$lambda$0(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final invoke$lambda$0(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 14

    const-string v0, "$launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_4d

    instance-of v0, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_4d

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const-string p0, "BOTTOM.WIDGET - COMMON"

    const-string v0, "bindAppWidgetRemove remove widget"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 p0, 0x5

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZLjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->stripEmptyScreens()V

    const/4 p0, 0x1

    iput-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0

    :cond_4d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final invoke(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;
    .registers 5

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl$removeBottomWidget$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl$removeBottomWidget$1;->$launcher:Lcom/android/launcher/Launcher;

    new-instance v2, Lcom/android/launcher3/bottomsearch/c;

    invoke-direct {v2, p1, p0, v0}, Lcom/android/launcher3/bottomsearch/c;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    iget-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl$removeBottomWidget$1;->invoke(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
