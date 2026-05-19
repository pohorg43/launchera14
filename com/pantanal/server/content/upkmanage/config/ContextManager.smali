.class public final Lcom/pantanal/server/content/upkmanage/config/ContextManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/upkmanage/config/ContextManager$ConfigProperty;
    }
.end annotation


# static fields
.field public static final a:Lcom/pantanal/server/content/upkmanage/config/ContextManager;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static c:I

.field public static d:Ljava/util/Locale;

.field public static e:Lcom/pantanal/server/content/upkmanage/config/ContextManager$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pantanal/server/content/upkmanage/config/ContextManager;

    invoke-direct {v0}, Lcom/pantanal/server/content/upkmanage/config/ContextManager;-><init>()V

    sput-object v0, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->a:Lcom/pantanal/server/content/upkmanage/config/ContextManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/pantanal/server/content/upkmanage/config/ContextManager$a;

    invoke-direct {v0}, Lcom/pantanal/server/content/upkmanage/config/ContextManager$a;-><init>()V

    sput-object v0, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->e:Lcom/pantanal/server/content/upkmanage/config/ContextManager$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
