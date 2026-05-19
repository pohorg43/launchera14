.class public final synthetic Lcom/oplus/quickstep/locksetting/contract/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/oplus/quickstep/locksetting/contract/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/locksetting/contract/b;

    invoke-direct {v0}, Lcom/oplus/quickstep/locksetting/contract/b;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/locksetting/contract/b;->a:Lcom/oplus/quickstep/locksetting/contract/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->c(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
