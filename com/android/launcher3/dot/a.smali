.class public final synthetic Lcom/android/launcher3/dot/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dot/a;->a:Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/a;->a:Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;

    invoke-static {p0}, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;->a(Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;)V

    return-void
.end method
