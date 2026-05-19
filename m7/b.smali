.class public final Lm7/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/e2;


# static fields
.field public static final a:Lm7/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm7/b;

    invoke-direct {v0}, Lm7/b;-><init>()V

    sput-object v0, Lm7/b;->a:Lm7/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "Active"

    return-object p0
.end method
