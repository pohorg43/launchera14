.class public final synthetic Lcom/android/launcher3/testing/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/testing/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/testing/f;

    invoke-direct {v0}, Lcom/android/launcher3/testing/f;-><init>()V

    sput-object v0, Lcom/android/launcher3/testing/f;->a:Lcom/android/launcher3/testing/f;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/testing/TestInformationHandler;->e()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
