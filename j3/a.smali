.class public final Lj3/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/a$a;
    }
.end annotation


# static fields
.field public static final e:Lj3/a$a;

.field public static f:Lj3/a;


# instance fields
.field public final a:Lh3/a;

.field public b:Lp7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/d<",
            "+",
            "Ljava/util/List<",
            "Li3/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lm7/j1;

.field public d:Lm7/s1;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lj3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj3/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lj3/a;->e:Lj3/a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;->Companion:Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$a;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;->access$getInstance$cp()Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;

    move-result-object v1

    if-nez v1, :cond_16

    new-instance v1, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;

    invoke-direct {v1}, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;-><init>()V

    invoke-static {v1}, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;->access$setInstance$cp(Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_26

    monitor-exit v0

    goto :goto_17

    :cond_16
    monitor-exit v0

    :goto_17
    invoke-virtual {v1}, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;->upkDao()Lh3/a;

    move-result-object v0

    iput-object v0, p0, Lj3/a;->a:Lh3/a;

    const-string v0, "#entrance_database"

    invoke-static {v0}, Lm7/o2;->b(Ljava/lang/String;)Lm7/j1;

    move-result-object v0

    iput-object v0, p0, Lj3/a;->c:Lm7/j1;

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0

    throw p0
.end method
