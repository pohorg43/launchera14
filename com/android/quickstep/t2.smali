.class public final synthetic Lcom/android/quickstep/t2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/t2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/t2;

    invoke-direct {v0}, Lcom/android/quickstep/t2;-><init>()V

    sput-object v0, Lcom/android/quickstep/t2;->a:Lcom/android/quickstep/t2;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 1

    invoke-static {}, Lcom/android/quickstep/ViewUtils;->a()Z

    move-result p0

    return p0
.end method
