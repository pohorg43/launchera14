.class public final Lz6/l$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lz6/l$a;

.field public static final b:Lz6/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lz6/l$a;

    invoke-direct {v0}, Lz6/l$a;-><init>()V

    sput-object v0, Lz6/l$a;->a:Lz6/l$a;

    new-instance v0, Lz6/m;

    sget-object v1, Lz6/f$a;->a:Lz6/f$a;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lz6/m;-><init>(Lz6/f;Lz6/e;I)V

    sput-object v0, Lz6/l$a;->b:Lz6/m;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
