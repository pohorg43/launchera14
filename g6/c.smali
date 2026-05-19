.class public final Lg6/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lg6/c;

.field public static final b:Le6/b$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lg6/c;

    invoke-direct {v0}, Lg6/c;-><init>()V

    sput-object v0, Lg6/c;->a:Lg6/c;

    invoke-static {}, Le6/b$d;->a()Le6/b$b;

    move-result-object v0

    sput-object v0, Lg6/c;->b:Le6/b$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
