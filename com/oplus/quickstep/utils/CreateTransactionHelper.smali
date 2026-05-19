.class public final Lcom/oplus/quickstep/utils/CreateTransactionHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/CreateTransactionHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/utils/CreateTransactionHelper$Companion;

.field private static final MAX_TRANSACTION_COUNT:I = 0xa


# instance fields
.field private final mTransactionQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/quickstep/util/SurfaceTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/CreateTransactionHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/CreateTransactionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->Companion:Lcom/oplus/quickstep/utils/CreateTransactionHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->mTransactionQueue:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final createSurfaceTransaction()Lcom/android/quickstep/util/SurfaceTransaction;
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v0}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_15
    iget-object v0, p0, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mTransactionQueue.pop()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/quickstep/util/SurfaceTransaction;

    iget-object p0, p0, Lcom/oplus/quickstep/utils/CreateTransactionHelper;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_27
    return-object v0
.end method
