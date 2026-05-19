.class public interface abstract Lcom/android/systemui/shared/system/TaskStackChangeListeners$OnCacheListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/TaskStackChangeListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCacheListener"
.end annotation


# virtual methods
.method public abstract callTaskSnapshotChanged(IJLjava/lang/Runnable;)V
.end method

.method public abstract checkValueExist(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract putCache(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
.end method
