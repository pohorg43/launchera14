.class public final synthetic Lcom/android/common/util/a1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/android/common/util/a1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/a1;

    invoke-direct {v0}, Lcom/android/common/util/a1;-><init>()V

    sput-object v0, Lcom/android/common/util/a1;->a:Lcom/android/common/util/a1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/common/util/TemporaryCacheHelper;->a()V

    return-void
.end method
