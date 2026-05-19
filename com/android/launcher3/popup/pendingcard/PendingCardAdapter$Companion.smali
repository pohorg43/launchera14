.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMIsShowDragBox()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->access$getMIsShowDragBox$cp()Z

    move-result p0

    return p0
.end method

.method public final setMIsShowDragBox(Z)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->access$setMIsShowDragBox$cp(Z)V

    return-void
.end method
