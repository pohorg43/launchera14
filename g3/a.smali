.class public final Lg3/a;
.super Lg3/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg3/f<",
        "Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lg3/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lg3/a;

    invoke-direct {v0}, Lg3/a;-><init>()V

    sput-object v0, Lg3/a;->g:Lg3/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lg3/b;

    invoke-direct {v0}, Lg3/b;-><init>()V

    invoke-direct {p0, v0}, Lg3/f;-><init>(Lg3/e;)V

    return-void
.end method
