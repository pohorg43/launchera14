.class public final synthetic Lcom/android/launcher3/model/s1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic a:Landroid/util/LongSparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/LongSparseArray;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s1;->a:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/model/s1;->a:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0
.end method
