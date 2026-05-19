.class public final synthetic Lcom/android/launcher3/bottomsearch/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic b:Lcom/android/launcher/Launcher;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/c;->a:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p2, p0, Lcom/android/launcher3/bottomsearch/c;->b:Lcom/android/launcher/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/bottomsearch/c;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/c;->a:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/c;->b:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/bottomsearch/c;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl$removeBottomWidget$1;->a(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
