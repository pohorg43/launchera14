.class public Lc9/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lc9/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc9/c;

    invoke-direct {v0}, Lc9/c;-><init>()V

    sput-object v0, Lc9/c$b;->a:Lc9/c;

    return-void
.end method
