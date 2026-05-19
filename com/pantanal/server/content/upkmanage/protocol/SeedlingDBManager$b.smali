.class public final Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$b;

.field public static final b:Lh3/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh3/b;

    invoke-static {}, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager;->access$getSeedlingDatabase$cp()Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantanal/server/content/upkmanage/database/SeedlingDatabase;->upkDao()Lh3/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lh3/b;-><init>(Lh3/a;)V

    sput-object v0, Lcom/pantanal/server/content/upkmanage/protocol/SeedlingDBManager$b;->b:Lh3/b;

    return-void
.end method
