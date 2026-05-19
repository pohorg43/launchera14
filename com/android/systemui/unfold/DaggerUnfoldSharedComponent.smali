.class public final Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$UnfoldSharedComponentImpl;,
        Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$Factory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factory()Lcom/android/systemui/unfold/UnfoldSharedComponent$Factory;
    .registers 2

    new-instance v0, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$Factory;-><init>(Lcom/android/systemui/unfold/DaggerUnfoldSharedComponent$1;)V

    return-object v0
.end method
