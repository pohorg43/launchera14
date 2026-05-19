.class public final synthetic Lcom/android/launcher3/j1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/OplusLauncherModel;

.field public final synthetic c:Lcom/android/launcher3/util/IntArray;

.field public final synthetic d:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;ZI)V
    .registers 6

    iput p5, p0, Lcom/android/launcher3/j1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/j1;->b:Lcom/android/launcher3/OplusLauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/j1;->c:Lcom/android/launcher3/util/IntArray;

    iput-object p3, p0, Lcom/android/launcher3/j1;->d:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iput-boolean p4, p0, Lcom/android/launcher3/j1;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/j1;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/j1;->b:Lcom/android/launcher3/OplusLauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/j1;->c:Lcom/android/launcher3/util/IntArray;

    iget-object v2, p0, Lcom/android/launcher3/j1;->d:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-boolean p0, p0, Lcom/android/launcher3/j1;->e:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/OplusLauncherProvider;->g(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/j1;->b:Lcom/android/launcher3/OplusLauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/j1;->c:Lcom/android/launcher3/util/IntArray;

    iget-object v2, p0, Lcom/android/launcher3/j1;->d:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-boolean p0, p0, Lcom/android/launcher3/j1;->e:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->a(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
