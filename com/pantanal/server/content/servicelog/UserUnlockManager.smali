.class public final Lcom/pantanal/server/content/servicelog/UserUnlockManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/servicelog/UserUnlockManager$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/pantanal/server/content/servicelog/UserUnlockManager;

.field public static final b:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pantanal/server/content/servicelog/UserUnlockManager;

    invoke-direct {v0}, Lcom/pantanal/server/content/servicelog/UserUnlockManager;-><init>()V

    sput-object v0, Lcom/pantanal/server/content/servicelog/UserUnlockManager;->a:Lcom/pantanal/server/content/servicelog/UserUnlockManager;

    sget-object v0, Lcom/pantanal/server/content/servicelog/UserUnlockManager$b;->a:Lcom/pantanal/server/content/servicelog/UserUnlockManager$b;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/pantanal/server/content/servicelog/UserUnlockManager;->b:Lh4/f;

    new-instance v0, Lcom/pantanal/server/content/servicelog/UserUnlockManager$userUnlockReceiver$1;

    invoke-direct {v0}, Lcom/pantanal/server/content/servicelog/UserUnlockManager$userUnlockReceiver$1;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/servicelog/UserUnlockManager$a;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/pantanal/server/content/servicelog/UserUnlockManager;->b:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
