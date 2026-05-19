.class public final synthetic Lcom/android/launcher3/card/cache/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$CardEntryFetchTask;

.field public final synthetic b:Lcom/android/launcher3/card/cache/CachedEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$CardEntryFetchTask;Lcom/android/launcher3/card/cache/CachedEntry;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/cache/b;->a:Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$CardEntryFetchTask;

    iput-object p2, p0, Lcom/android/launcher3/card/cache/b;->b:Lcom/android/launcher3/card/cache/CachedEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/cache/b;->a:Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$CardEntryFetchTask;

    iget-object p0, p0, Lcom/android/launcher3/card/cache/b;->b:Lcom/android/launcher3/card/cache/CachedEntry;

    invoke-static {v0, p0}, Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$CardEntryFetchTask;->a(Lcom/android/launcher3/card/cache/InstantCardCacheUpdateHandler$CardEntryFetchTask;Lcom/android/launcher3/card/cache/CachedEntry;)V

    return-void
.end method
