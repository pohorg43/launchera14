.class public final synthetic Lj0/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lj0/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lj0/e;

    invoke-direct {v0}, Lj0/e;-><init>()V

    sput-object v0, Lj0/e;->a:Lj0/e;

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

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method
