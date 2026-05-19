.class public interface abstract Lz6/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/d$a;
    }
.end annotation


# static fields
.field public static final a:Lz6/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lz6/l;->b:Lz6/l$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lz6/l$a;->b:Lz6/m;

    sput-object v0, Lz6/d;->a:Lz6/d;

    return-void
.end method


# virtual methods
.method public abstract b(Ly6/l0;Ly6/l0;)Z
.end method
