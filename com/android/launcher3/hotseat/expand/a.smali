.class public final synthetic Lcom/android/launcher3/hotseat/expand/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/hotseat/expand/a;->a:Z

    iput-boolean p2, p0, Lcom/android/launcher3/hotseat/expand/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/hotseat/expand/a;->a:Z

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/expand/a;->b:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->h(ZZ)V

    return-void
.end method
